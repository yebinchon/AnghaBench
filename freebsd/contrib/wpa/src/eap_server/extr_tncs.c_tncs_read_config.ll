; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tncs_global = type { %struct.tnc_if_imv* }
%struct.tnc_if_imv = type { %struct.tnc_if_imv* }

@TNC_CONFIG_FILE = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"TNC: Could not open TNC configuration file '%s'\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"IMV \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tncs_global*)* @tncs_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tncs_read_config(%struct.tncs_global* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tncs_global*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tnc_if_imv*, align 8
  %10 = alloca %struct.tnc_if_imv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tncs_global* %0, %struct.tncs_global** %3, align 8
  store i32 0, i32* %11, align 4
  store %struct.tnc_if_imv* null, %struct.tnc_if_imv** %10, align 8
  %13 = load i32, i32* @TNC_CONFIG_FILE, align 4
  %14 = call i8* @os_readfile(i32 %13, i64* %8)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @MSG_ERROR, align 4
  %19 = load i32, i32* @TNC_CONFIG_FILE, align 4
  %20 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 -1, i32* %2, align 4
  br label %90

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %84, %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %87

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %7, align 8
  br label %32

32:                                               ; preds = %48, %30
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 10
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 13
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ult i8* %43, %44
  br label %46

46:                                               ; preds = %42, %37, %32
  %47 = phi i1 [ false, %37 ], [ false, %32 ], [ %45, %42 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %7, align 8
  br label %32

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  store i8 0, i8* %52, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = call i64 @os_strncmp(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %51
  store i32 0, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = load i8*, i8** %7, align 8
  %62 = call %struct.tnc_if_imv* @tncs_parse_imv(i32 %57, i8* %60, i8* %61, i32* %12)
  store %struct.tnc_if_imv* %62, %struct.tnc_if_imv** %9, align 8
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 -1, i32* %2, align 4
  br label %90

66:                                               ; preds = %56
  %67 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %9, align 8
  %68 = icmp ne %struct.tnc_if_imv* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %10, align 8
  %71 = icmp eq %struct.tnc_if_imv* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %9, align 8
  %74 = load %struct.tncs_global*, %struct.tncs_global** %3, align 8
  %75 = getelementptr inbounds %struct.tncs_global, %struct.tncs_global* %74, i32 0, i32 0
  store %struct.tnc_if_imv* %73, %struct.tnc_if_imv** %75, align 8
  br label %80

76:                                               ; preds = %69
  %77 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %9, align 8
  %78 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %10, align 8
  %79 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %78, i32 0, i32 0
  store %struct.tnc_if_imv* %77, %struct.tnc_if_imv** %79, align 8
  br label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %9, align 8
  store %struct.tnc_if_imv* %81, %struct.tnc_if_imv** %10, align 8
  br label %82

82:                                               ; preds = %80, %66
  br label %83

83:                                               ; preds = %82, %51
  br label %84

84:                                               ; preds = %83
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8* %86, i8** %6, align 8
  br label %26

87:                                               ; preds = %26
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @os_free(i8* %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %87, %65, %17
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i8* @os_readfile(i32, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local %struct.tnc_if_imv* @tncs_parse_imv(i32, i8*, i8*, i32*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
