; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_config_file.c_config_fgets.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_config_file.c_config_fgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileptr = type { i8*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, %struct.fileptr*)* @config_fgets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @config_fgets(i8* %0, i64 %1, %struct.fileptr* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fileptr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.fileptr* %2, %struct.fileptr** %7, align 8
  %10 = load %struct.fileptr*, %struct.fileptr** %7, align 8
  %11 = getelementptr inbounds %struct.fileptr, %struct.fileptr* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.fileptr*, %struct.fileptr** %7, align 8
  %18 = getelementptr inbounds %struct.fileptr, %struct.fileptr* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i8* @fgets(i8* %15, i64 %16, i32* %19)
  store i8* %20, i8** %4, align 8
  br label %73

21:                                               ; preds = %3
  %22 = load %struct.fileptr*, %struct.fileptr** %7, align 8
  %23 = getelementptr inbounds %struct.fileptr, %struct.fileptr* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i8* null, i8** %4, align 8
  br label %73

29:                                               ; preds = %21
  %30 = load %struct.fileptr*, %struct.fileptr** %7, align 8
  %31 = getelementptr inbounds %struct.fileptr, %struct.fileptr* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.fileptr*, %struct.fileptr** %7, align 8
  %34 = getelementptr inbounds %struct.fileptr, %struct.fileptr* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcspn(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %32, i64 %37
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %8, align 8
  br label %46

46:                                               ; preds = %43, %29
  %47 = load i64, i64* %6, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load %struct.fileptr*, %struct.fileptr** %7, align 8
  %50 = getelementptr inbounds %struct.fileptr, %struct.fileptr* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = ptrtoint i8* %48 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = call i64 @min(i64 %47, i64 %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %6, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %46
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.fileptr*, %struct.fileptr** %7, align 8
  %61 = getelementptr inbounds %struct.fileptr, %struct.fileptr* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @memcpy(i8* %59, i8* %62, i64 %63)
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 0, i8* %67, align 1
  br label %68

68:                                               ; preds = %58, %46
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.fileptr*, %struct.fileptr** %7, align 8
  %71 = getelementptr inbounds %struct.fileptr, %struct.fileptr* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %5, align 8
  store i8* %72, i8** %4, align 8
  br label %73

73:                                               ; preds = %68, %28, %14
  %74 = load i8*, i8** %4, align 8
  ret i8* %74
}

declare dso_local i8* @fgets(i8*, i64, i32*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
