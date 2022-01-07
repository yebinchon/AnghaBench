; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_dump_portinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_common.c_dump_portinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_PORT_FIRST_F = common dso_local global i32 0, align 4
@IB_PORT_LAST_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@IB_PORT_MKEY_F = common dso_local global i32 0, align 4
@show_keys = common dso_local global i64 0, align 8
@NOT_DISPLAYED_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@IB_PORT_CAPMASK2_F = common dso_local global i32 0, align 4
@IB_PORT_LINK_SPEED_EXT_LAST_F = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_portinfo(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca [1024 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @IB_PORT_FIRST_F, align 4
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @IB_PORT_LAST_F, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %54

14:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %21, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %15

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @IB_PORT_MKEY_F, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load i64, i64* @show_keys, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @NOT_DISPLAYED_STR, align 4
  %35 = call i32 @snprint_field(i8* %32, i32 1024, i32 %33, i32 32, i32 %34)
  br label %48

36:                                               ; preds = %28, %24
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %40 = call i32 @mad_decode_field(i8* %37, i32 %38, i8* %39)
  %41 = load i32, i32* %5, align 4
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %44 = call i32 @mad_dump_field(i32 %41, i8* %42, i32 1024, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %87

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %31
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %10

54:                                               ; preds = %10
  %55 = load i32, i32* @IB_PORT_CAPMASK2_F, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %84, %54
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @IB_PORT_LINK_SPEED_EXT_LAST_F, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %67, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %61

70:                                               ; preds = %61
  %71 = load i8*, i8** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %74 = call i32 @mad_decode_field(i8* %71, i32 %72, i8* %73)
  %75 = load i32, i32* %5, align 4
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %77 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %78 = call i32 @mad_dump_field(i32 %75, i8* %76, i32 1024, i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  br label %87

81:                                               ; preds = %70
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %56

87:                                               ; preds = %46, %80, %56
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @snprint_field(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mad_decode_field(i8*, i32, i8*) #1

declare dso_local i32 @mad_dump_field(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
