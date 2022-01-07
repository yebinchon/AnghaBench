; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_saal_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_uni.c_uni_saal_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni = type { i32 }
%struct.uni_msg = type { i32 }

@SIGO_SAAL_ESTABLISH_indication = common dso_local global i32 0, align 4
@SIGO_SAAL_ESTABLISH_confirm = common dso_local global i32 0, align 4
@SIGO_SAAL_RELEASE_confirm = common dso_local global i32 0, align 4
@SIGO_SAAL_RELEASE_indication = common dso_local global i32 0, align 4
@SIGO_SAAL_DATA_indication = common dso_local global i32 0, align 4
@SIGO_SAAL_UDATA_indication = common dso_local global i32 0, align 4
@UNI_FAC_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bogus saal signal %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uni_saal_input(%struct.uni* %0, i32 %1, %struct.uni_msg* %2) #0 {
  %4 = alloca %struct.uni*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uni_msg*, align 8
  store %struct.uni* %0, %struct.uni** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.uni_msg* %2, %struct.uni_msg** %6, align 8
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %58 [
    i32 131, label %8
    i32 132, label %18
    i32 130, label %28
    i32 129, label %38
    i32 133, label %48
    i32 128, label %53
  ]

8:                                                ; preds = %3
  %9 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %10 = icmp ne %struct.uni_msg* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %13 = call i32 @uni_msg_destroy(%struct.uni_msg* %12)
  br label %14

14:                                               ; preds = %11, %8
  %15 = load %struct.uni*, %struct.uni** %4, align 8
  %16 = load i32, i32* @SIGO_SAAL_ESTABLISH_indication, align 4
  %17 = call i32 @uni_enq_coord(%struct.uni* %15, i32 %16, i32 0, %struct.uni_msg* null)
  br label %69

18:                                               ; preds = %3
  %19 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %20 = icmp ne %struct.uni_msg* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %23 = call i32 @uni_msg_destroy(%struct.uni_msg* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.uni*, %struct.uni** %4, align 8
  %26 = load i32, i32* @SIGO_SAAL_ESTABLISH_confirm, align 4
  %27 = call i32 @uni_enq_coord(%struct.uni* %25, i32 %26, i32 0, %struct.uni_msg* null)
  br label %69

28:                                               ; preds = %3
  %29 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %30 = icmp ne %struct.uni_msg* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %33 = call i32 @uni_msg_destroy(%struct.uni_msg* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.uni*, %struct.uni** %4, align 8
  %36 = load i32, i32* @SIGO_SAAL_RELEASE_confirm, align 4
  %37 = call i32 @uni_enq_coord(%struct.uni* %35, i32 %36, i32 0, %struct.uni_msg* null)
  br label %69

38:                                               ; preds = %3
  %39 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %40 = icmp ne %struct.uni_msg* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %43 = call i32 @uni_msg_destroy(%struct.uni_msg* %42)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load %struct.uni*, %struct.uni** %4, align 8
  %46 = load i32, i32* @SIGO_SAAL_RELEASE_indication, align 4
  %47 = call i32 @uni_enq_coord(%struct.uni* %45, i32 %46, i32 0, %struct.uni_msg* null)
  br label %69

48:                                               ; preds = %3
  %49 = load %struct.uni*, %struct.uni** %4, align 8
  %50 = load i32, i32* @SIGO_SAAL_DATA_indication, align 4
  %51 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %52 = call i32 @uni_enq_coord(%struct.uni* %49, i32 %50, i32 0, %struct.uni_msg* %51)
  br label %69

53:                                               ; preds = %3
  %54 = load %struct.uni*, %struct.uni** %4, align 8
  %55 = load i32, i32* @SIGO_SAAL_UDATA_indication, align 4
  %56 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %57 = call i32 @uni_enq_coord(%struct.uni* %54, i32 %55, i32 0, %struct.uni_msg* %56)
  br label %69

58:                                               ; preds = %3
  %59 = load %struct.uni*, %struct.uni** %4, align 8
  %60 = load i32, i32* @UNI_FAC_ERR, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @VERBOSE(%struct.uni* %59, i32 %60, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %64 = icmp ne %struct.uni_msg* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %67 = call i32 @uni_msg_destroy(%struct.uni_msg* %66)
  br label %68

68:                                               ; preds = %65, %58
  br label %69

69:                                               ; preds = %68, %53, %48, %44, %34, %24, %14
  ret void
}

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @uni_enq_coord(%struct.uni*, i32, i32, %struct.uni_msg*) #1

declare dso_local i32 @VERBOSE(%struct.uni*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
