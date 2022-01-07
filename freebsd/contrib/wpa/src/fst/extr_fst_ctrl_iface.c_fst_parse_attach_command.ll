; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_fst_parse_attach_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_fst_parse_attach_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_iface_cfg = type { i8*, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@FST_DEFAULT_LLT_CFG_VALUE = common dso_local global i32 0, align 4
@FST_ATTACH_CMD_PNAME_LLT = common dso_local global i32 0, align 4
@FST_ATTACH_CMD_PNAME_PRIORITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fst_parse_attach_command(i8* %0, i8* %1, i64 %2, %struct.fst_iface_cfg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fst_iface_cfg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.fst_iface_cfg* %3, %struct.fst_iface_cfg** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i64 @fst_read_next_text_param(i8* %14, i8* %15, i32 %17, i8** %11)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load i8*, i8** %11, align 8
  %22 = load %struct.fst_iface_cfg*, %struct.fst_iface_cfg** %9, align 8
  %23 = getelementptr inbounds %struct.fst_iface_cfg, %struct.fst_iface_cfg* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @fst_read_next_text_param(i8* %21, i8* %24, i32 8, i8** %11)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %93

30:                                               ; preds = %20
  %31 = load i32, i32* @FST_DEFAULT_LLT_CFG_VALUE, align 4
  %32 = load %struct.fst_iface_cfg*, %struct.fst_iface_cfg** %9, align 8
  %33 = getelementptr inbounds %struct.fst_iface_cfg, %struct.fst_iface_cfg* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.fst_iface_cfg*, %struct.fst_iface_cfg** %9, align 8
  %35 = getelementptr inbounds %struct.fst_iface_cfg, %struct.fst_iface_cfg* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* @FST_ATTACH_CMD_PNAME_LLT, align 4
  %38 = call i8* @os_strstr(i8* %36, i32 %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %30
  %42 = load i32, i32* @FST_ATTACH_CMD_PNAME_LLT, align 4
  %43 = call i32 @os_strlen(i32 %42)
  %44 = load i8*, i8** %10, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 61
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i32 @fst_read_next_int_param(i8* %53, i64* %12, i8** %11)
  store i32 %54, i32* %13, align 4
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.fst_iface_cfg*, %struct.fst_iface_cfg** %9, align 8
  %60 = getelementptr inbounds %struct.fst_iface_cfg, %struct.fst_iface_cfg* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %41
  br label %63

63:                                               ; preds = %62, %30
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* @FST_ATTACH_CMD_PNAME_PRIORITY, align 4
  %66 = call i8* @os_strstr(i8* %64, i32 %65)
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %92

69:                                               ; preds = %63
  %70 = load i32, i32* @FST_ATTACH_CMD_PNAME_PRIORITY, align 4
  %71 = call i32 @os_strlen(i32 %70)
  %72 = load i8*, i8** %10, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 61
  br i1 %78, label %79, label %91

79:                                               ; preds = %69
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = call i32 @fst_read_next_int_param(i8* %81, i64* %12, i8** %11)
  store i32 %82, i32* %13, align 4
  %83 = load i64, i64* %12, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.fst_iface_cfg*, %struct.fst_iface_cfg** %9, align 8
  %89 = getelementptr inbounds %struct.fst_iface_cfg, %struct.fst_iface_cfg* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %79
  br label %91

91:                                               ; preds = %90, %69
  br label %92

92:                                               ; preds = %91, %63
  store i32 0, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %27
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i64 @fst_read_next_text_param(i8*, i8*, i32, i8**) #1

declare dso_local i8* @os_strstr(i8*, i32) #1

declare dso_local i32 @os_strlen(i32) #1

declare dso_local i32 @fst_read_next_int_param(i8*, i64*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
