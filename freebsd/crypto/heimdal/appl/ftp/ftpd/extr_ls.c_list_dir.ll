; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ls.c_list_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftpd/extr_ls.c_list_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%s: out of memory\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@LS_DIR_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32)* @list_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_dir(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32* @opendir(i8* %14)
  store i32* %15, i32** %8, align 8
  store i8** null, i8*** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %4, align 4
  br label %90

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %77, %34, %22
  %24 = load i32*, i32** %8, align 8
  %25 = call %struct.dirent* @readdir(i32* %24)
  store %struct.dirent* %25, %struct.dirent** %9, align 8
  %26 = icmp ne %struct.dirent* %25, null
  br i1 %26, label %27, label %80

27:                                               ; preds = %23
  %28 = load %struct.dirent*, %struct.dirent** %9, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @hide_file(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %23

35:                                               ; preds = %27
  %36 = load i8**, i8*** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i8* @realloc(i8** %36, i32 %41)
  store i8* %42, i8** %13, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = load i32, i32* @LOG_ERR, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @syslog(i32 %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = load i8**, i8*** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @free_files(i8** %49, i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @closedir(i32* %52)
  store i32 -1, i32* %4, align 4
  br label %90

54:                                               ; preds = %35
  %55 = load i8*, i8** %13, align 8
  %56 = bitcast i8* %55 to i8**
  store i8** %56, i8*** %10, align 8
  %57 = load i8**, i8*** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.dirent*, %struct.dirent** %9, align 8
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @asprintf(i8** %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %61, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %77

68:                                               ; preds = %54
  %69 = load i32, i32* @LOG_ERR, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @syslog(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %70)
  %72 = load i8**, i8*** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @free_files(i8** %72, i32 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @closedir(i32* %75)
  store i32 -1, i32* %4, align 4
  br label %90

77:                                               ; preds = %54
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %23

80:                                               ; preds = %23
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @closedir(i32* %81)
  %83 = load i32*, i32** %5, align 8
  %84 = load i8**, i8*** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @LS_DIR_FLAG, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @list_files(i32* %83, i8** %84, i32 %85, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %80, %68, %45, %18
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @hide_file(i32, i32) #1

declare dso_local i8* @realloc(i8**, i32) #1

declare dso_local i32 @free_files(i8**, i32) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @list_files(i32*, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
