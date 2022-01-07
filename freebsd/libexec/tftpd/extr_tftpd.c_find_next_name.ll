; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftpd.c_find_next_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftpd.c_find_next_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@newfile_format = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Filename suffix too long (%d characters maximum)\00", align 1
@EACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Filename too long (%zd characters, %zd maximum)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s.%s.%02d\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @find_next_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_next_name(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32, i32* @MAXPATHLEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @MAXPATHLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %21 = call i32 @time(i32* %7)
  %22 = call %struct.tm* @localtime(i32* %7)
  %23 = bitcast %struct.tm* %9 to i8*
  %24 = bitcast %struct.tm* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = trunc i64 %15 to i32
  %26 = load i32, i32* @newfile_format, align 4
  %27 = call i64 @strftime(i8* %17, i32 %25, i32 %26, %struct.tm* %9)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i32, i32* @LOG_WARNING, align 4
  %32 = load i32, i32* @MAXPATHLEN, align 4
  %33 = call i32 (i32, i8*, i32, ...) @syslog(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EACCESS, align 4
  store i32 %34, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %92

35:                                               ; preds = %2
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = sext i32 %37 to i64
  %39 = load i32, i32* @MAXPATHLEN, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %8, align 8
  %42 = sub i64 %40, %41
  %43 = sub i64 %42, 5
  %44 = icmp ugt i64 %38, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %35
  %46 = load i32, i32* @LOG_WARNING, align 4
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = load i32, i32* @MAXPATHLEN, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %50, %51
  %53 = sub i64 %52, 5
  %54 = call i32 (i32, i8*, i32, ...) @syslog(i32 %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %48, i64 %53)
  %55 = load i32, i32* @EACCESS, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %92

56:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %87, %56
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 100
  br i1 %59, label %60, label %90

60:                                               ; preds = %57
  %61 = load i8*, i8** %4, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %61, i8* %17, i32 %62)
  %64 = load i32, i32* @O_WRONLY, align 4
  %65 = load i32, i32* @O_CREAT, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @O_EXCL, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @S_IRUSR, align 4
  %70 = load i32, i32* @S_IWUSR, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @S_IRGRP, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @S_IWGRP, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @S_IROTH, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @S_IWOTH, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @open(i8* %20, i32 %68, i32 %79)
  %81 = load i32*, i32** %5, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %92

86:                                               ; preds = %60
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %57

90:                                               ; preds = %57
  %91 = load i32, i32* @EEXIST, align 4
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %92

92:                                               ; preds = %90, %85, %45, %30
  %93 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @time(i32*) #2

declare dso_local %struct.tm* @localtime(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @strftime(i8*, i32, i32, %struct.tm*) #2

declare dso_local i32 @syslog(i32, i8*, i32, ...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i32) #2

declare dso_local i32 @open(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
