; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_hxtool_hex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_hxtool.c_hxtool_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hex_options = type { i64 }

@stdin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"hex_decode failed\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"fwrite failed\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hxtool_hex(%struct.hex_options* %0, i32 %1, i8** %2) #0 {
  %4 = alloca %struct.hex_options*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [28 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.hex_options* %0, %struct.hex_options** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8** %2, i8*** %6, align 8
  %14 = load %struct.hex_options*, %struct.hex_options** %4, align 8
  %15 = getelementptr inbounds %struct.hex_options, %struct.hex_options* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %56, %18
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %21 = load i32, i32* @stdin, align 4
  %22 = call i32* @fgets(i8* %20, i32 1024, i32 %21)
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %57

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %26 = call i64 @strcspn(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %26
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %34, %24
  %30 = load i8*, i8** %9, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @isspace(i8 zeroext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  br label %29

37:                                               ; preds = %29
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = call i64 @hex_decode(i8* %38, i8* %39, i32 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %37
  %48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %49 = load i64, i64* %10, align 8
  %50 = load i32, i32* @stdout, align 4
  %51 = call i64 @fwrite(i8* %48, i32 1, i64 %49, i32 %50)
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %47
  br label %19

57:                                               ; preds = %19
  br label %78

58:                                               ; preds = %3
  br label %59

59:                                               ; preds = %71, %70, %58
  %60 = getelementptr inbounds [28 x i8], [28 x i8]* %11, i64 0, i64 0
  %61 = load i32, i32* @stdin, align 4
  %62 = call i64 @fread(i8* %60, i32 1, i32 28, i32 %61)
  store i64 %62, i64* %13, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = getelementptr inbounds [28 x i8], [28 x i8]* %11, i64 0, i64 0
  %66 = load i64, i64* %13, align 8
  %67 = call i64 @hex_encode(i8* %65, i64 %66, i8** %12)
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %59

71:                                               ; preds = %64
  %72 = load i32, i32* @stdout, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = load i8*, i8** %12, align 8
  %76 = call i32 @free(i8* %75)
  br label %59

77:                                               ; preds = %59
  br label %78

78:                                               ; preds = %77, %57
  ret i32 0
}

declare dso_local i32* @fgets(i8*, i32, i32) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i64 @hex_decode(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #1

declare dso_local i64 @fread(i8*, i32, i32, i32) #1

declare dso_local i64 @hex_encode(i8*, i64, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
