; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_security.c_sec_vfprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_security.c_sec_vfprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i32, i64, i8**)* }

@sec_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate command.\0A\00", align 1
@mech = common dso_local global %struct.TYPE_2__* null, align 8
@app_data = common dso_local global i32 0, align 4
@command_prot = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to encode command.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Out of memory base64-encoding.\0A\00", align 1
@prot_safe = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"MIC %s\00", align 1
@prot_private = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"ENC %s\00", align 1
@prot_confidential = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"CONF %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sec_vfprintf(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @sec_complete, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @vfprintf(i32* %14, i8* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %81

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vasprintf(i8** %8, i8* %19, i32 %20)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %81

25:                                               ; preds = %18
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mech, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (i32, i8*, i32, i64, i8**)*, i32 (i32, i8*, i32, i64, i8**)** %27, align 8
  %29 = load i32, i32* @app_data, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = load i64, i64* @command_prot, align 8
  %34 = call i32 %28(i32 %29, i8* %30, i32 %32, i64 %33, i8** %9)
  store i32 %34, i32* %10, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %81

41:                                               ; preds = %25
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @base64_encode(i8* %42, i32 %43, i8** %8)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @free(i8* %47)
  %49 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %81

50:                                               ; preds = %41
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i64, i64* @command_prot, align 8
  %54 = load i64, i64* @prot_safe, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32*, i32** %5, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @fprintf(i32* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %78

60:                                               ; preds = %50
  %61 = load i64, i64* @command_prot, align 8
  %62 = load i64, i64* @prot_private, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32*, i32** %5, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @fprintf(i32* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %66)
  br label %77

68:                                               ; preds = %60
  %69 = load i64, i64* @command_prot, align 8
  %70 = load i64, i64* @prot_confidential, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32*, i32** %5, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @fprintf(i32* %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %64
  br label %78

78:                                               ; preds = %77, %56
  %79 = load i8*, i8** %8, align 8
  %80 = call i32 @free(i8* %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %46, %39, %23, %13
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @vfprintf(i32*, i8*, i32) #1

declare dso_local i32 @vasprintf(i8**, i8*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @base64_encode(i8*, i32, i8**) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
