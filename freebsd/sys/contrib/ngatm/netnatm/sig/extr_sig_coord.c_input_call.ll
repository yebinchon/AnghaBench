; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_input_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_coord.c_input_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i64, i32, i32 }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { i32 }

@UNI_FAC_COORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"CALL MTYPE = %x %d/%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mine\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"his\00", align 1
@SIGC_CALL_PROC = common dso_local global i32 0, align 4
@SIGC_ALERTING = common dso_local global i32 0, align 4
@SIGC_RELEASE = common dso_local global i32 0, align 4
@SIGC_RELEASE_COMPL = common dso_local global i32 0, align 4
@SIGC_CONNECT = common dso_local global i32 0, align 4
@SIGC_CONNECT_ACK = common dso_local global i32 0, align 4
@SIGC_NOTIFY = common dso_local global i32 0, align 4
@SIGC_STATUS = common dso_local global i32 0, align 4
@SIGC_STATUS_ENQ = common dso_local global i32 0, align 4
@SIGC_ADD_PARTY = common dso_local global i32 0, align 4
@SIGC_PARTY_ALERTING = common dso_local global i32 0, align 4
@SIGC_ADD_PARTY_ACK = common dso_local global i32 0, align 4
@SIGC_ADD_PARTY_REJ = common dso_local global i32 0, align 4
@SIGC_DROP_PARTY = common dso_local global i32 0, align 4
@SIGC_DROP_PARTY_ACK = common dso_local global i32 0, align 4
@SIGC_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, %struct.uni_msg*, %struct.uni_all*)* @input_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_call(%struct.call* %0, %struct.uni_msg* %1, %struct.uni_all* %2) #0 {
  %4 = alloca %struct.call*, align 8
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_all*, align 8
  store %struct.call* %0, %struct.call** %4, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %5, align 8
  store %struct.uni_all* %2, %struct.uni_all** %6, align 8
  %7 = load %struct.call*, %struct.call** %4, align 8
  %8 = getelementptr inbounds %struct.call, %struct.call* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @UNI_FAC_COORD, align 4
  %11 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %12 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.call*, %struct.call** %4, align 8
  %15 = getelementptr inbounds %struct.call, %struct.call* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.call*, %struct.call** %4, align 8
  %18 = getelementptr inbounds %struct.call, %struct.call* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %23 = call i32 @VERBOSE(i32 %9, i32 %10, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i8* %22)
  %24 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %25 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %118 [
    i32 130, label %27
    i32 139, label %28
    i32 140, label %34
    i32 132, label %40
    i32 131, label %46
    i32 138, label %52
    i32 137, label %58
    i32 134, label %64
    i32 129, label %70
    i32 128, label %76
    i32 143, label %82
    i32 133, label %88
    i32 142, label %94
    i32 141, label %100
    i32 136, label %106
    i32 135, label %112
  ]

27:                                               ; preds = %3
  br label %124

28:                                               ; preds = %3
  %29 = load %struct.call*, %struct.call** %4, align 8
  %30 = load i32, i32* @SIGC_CALL_PROC, align 4
  %31 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %32 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %33 = call i32 @uni_enq_call(%struct.call* %29, i32 %30, i32 0, %struct.uni_msg* %31, %struct.uni_all* %32)
  br label %129

34:                                               ; preds = %3
  %35 = load %struct.call*, %struct.call** %4, align 8
  %36 = load i32, i32* @SIGC_ALERTING, align 4
  %37 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %38 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %39 = call i32 @uni_enq_call(%struct.call* %35, i32 %36, i32 0, %struct.uni_msg* %37, %struct.uni_all* %38)
  br label %129

40:                                               ; preds = %3
  %41 = load %struct.call*, %struct.call** %4, align 8
  %42 = load i32, i32* @SIGC_RELEASE, align 4
  %43 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %44 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %45 = call i32 @uni_enq_call(%struct.call* %41, i32 %42, i32 0, %struct.uni_msg* %43, %struct.uni_all* %44)
  br label %129

46:                                               ; preds = %3
  %47 = load %struct.call*, %struct.call** %4, align 8
  %48 = load i32, i32* @SIGC_RELEASE_COMPL, align 4
  %49 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %50 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %51 = call i32 @uni_enq_call(%struct.call* %47, i32 %48, i32 0, %struct.uni_msg* %49, %struct.uni_all* %50)
  br label %129

52:                                               ; preds = %3
  %53 = load %struct.call*, %struct.call** %4, align 8
  %54 = load i32, i32* @SIGC_CONNECT, align 4
  %55 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %56 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %57 = call i32 @uni_enq_call(%struct.call* %53, i32 %54, i32 0, %struct.uni_msg* %55, %struct.uni_all* %56)
  br label %129

58:                                               ; preds = %3
  %59 = load %struct.call*, %struct.call** %4, align 8
  %60 = load i32, i32* @SIGC_CONNECT_ACK, align 4
  %61 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %62 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %63 = call i32 @uni_enq_call(%struct.call* %59, i32 %60, i32 0, %struct.uni_msg* %61, %struct.uni_all* %62)
  br label %129

64:                                               ; preds = %3
  %65 = load %struct.call*, %struct.call** %4, align 8
  %66 = load i32, i32* @SIGC_NOTIFY, align 4
  %67 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %68 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %69 = call i32 @uni_enq_call(%struct.call* %65, i32 %66, i32 0, %struct.uni_msg* %67, %struct.uni_all* %68)
  br label %129

70:                                               ; preds = %3
  %71 = load %struct.call*, %struct.call** %4, align 8
  %72 = load i32, i32* @SIGC_STATUS, align 4
  %73 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %74 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %75 = call i32 @uni_enq_call(%struct.call* %71, i32 %72, i32 0, %struct.uni_msg* %73, %struct.uni_all* %74)
  br label %129

76:                                               ; preds = %3
  %77 = load %struct.call*, %struct.call** %4, align 8
  %78 = load i32, i32* @SIGC_STATUS_ENQ, align 4
  %79 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %80 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %81 = call i32 @uni_enq_call(%struct.call* %77, i32 %78, i32 0, %struct.uni_msg* %79, %struct.uni_all* %80)
  br label %129

82:                                               ; preds = %3
  %83 = load %struct.call*, %struct.call** %4, align 8
  %84 = load i32, i32* @SIGC_ADD_PARTY, align 4
  %85 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %86 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %87 = call i32 @uni_enq_call(%struct.call* %83, i32 %84, i32 0, %struct.uni_msg* %85, %struct.uni_all* %86)
  br label %129

88:                                               ; preds = %3
  %89 = load %struct.call*, %struct.call** %4, align 8
  %90 = load i32, i32* @SIGC_PARTY_ALERTING, align 4
  %91 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %92 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %93 = call i32 @uni_enq_call(%struct.call* %89, i32 %90, i32 0, %struct.uni_msg* %91, %struct.uni_all* %92)
  br label %129

94:                                               ; preds = %3
  %95 = load %struct.call*, %struct.call** %4, align 8
  %96 = load i32, i32* @SIGC_ADD_PARTY_ACK, align 4
  %97 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %98 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %99 = call i32 @uni_enq_call(%struct.call* %95, i32 %96, i32 0, %struct.uni_msg* %97, %struct.uni_all* %98)
  br label %129

100:                                              ; preds = %3
  %101 = load %struct.call*, %struct.call** %4, align 8
  %102 = load i32, i32* @SIGC_ADD_PARTY_REJ, align 4
  %103 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %104 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %105 = call i32 @uni_enq_call(%struct.call* %101, i32 %102, i32 0, %struct.uni_msg* %103, %struct.uni_all* %104)
  br label %129

106:                                              ; preds = %3
  %107 = load %struct.call*, %struct.call** %4, align 8
  %108 = load i32, i32* @SIGC_DROP_PARTY, align 4
  %109 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %110 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %111 = call i32 @uni_enq_call(%struct.call* %107, i32 %108, i32 0, %struct.uni_msg* %109, %struct.uni_all* %110)
  br label %129

112:                                              ; preds = %3
  %113 = load %struct.call*, %struct.call** %4, align 8
  %114 = load i32, i32* @SIGC_DROP_PARTY_ACK, align 4
  %115 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %116 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %117 = call i32 @uni_enq_call(%struct.call* %113, i32 %114, i32 0, %struct.uni_msg* %115, %struct.uni_all* %116)
  br label %129

118:                                              ; preds = %3
  %119 = load %struct.call*, %struct.call** %4, align 8
  %120 = load i32, i32* @SIGC_UNKNOWN, align 4
  %121 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %122 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %123 = call i32 @uni_enq_call(%struct.call* %119, i32 %120, i32 0, %struct.uni_msg* %121, %struct.uni_all* %122)
  br label %129

124:                                              ; preds = %27
  %125 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %126 = call i32 @UNI_FREE(%struct.uni_all* %125)
  %127 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %128 = call i32 @uni_msg_destroy(%struct.uni_msg* %127)
  br label %129

129:                                              ; preds = %124, %118, %112, %106, %100, %94, %88, %82, %76, %70, %64, %58, %52, %46, %40, %34, %28
  ret void
}

declare dso_local i32 @VERBOSE(i32, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @uni_enq_call(%struct.call*, i32, i32, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
