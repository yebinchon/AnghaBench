; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_get_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_packet_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, %struct.session_state* }
%struct.session_state = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.sshbuf = type { i32 }

@MODE_OUT = common dso_local global i32 0, align 4
@MODE_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_packet_get_state(%struct.ssh* %0, %struct.sshbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca %struct.sshbuf*, align 8
  %6 = alloca %struct.session_state*, align 8
  %7 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store %struct.sshbuf* %1, %struct.sshbuf** %5, align 8
  %8 = load %struct.ssh*, %struct.ssh** %4, align 8
  %9 = getelementptr inbounds %struct.ssh, %struct.ssh* %8, i32 0, i32 1
  %10 = load %struct.session_state*, %struct.session_state** %9, align 8
  store %struct.session_state* %10, %struct.session_state** %6, align 8
  %11 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %12 = load %struct.ssh*, %struct.ssh** %4, align 8
  %13 = getelementptr inbounds %struct.ssh, %struct.ssh* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @kex_to_blob(%struct.sshbuf* %11, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %121, label %17

17:                                               ; preds = %2
  %18 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %19 = load %struct.ssh*, %struct.ssh** %4, align 8
  %20 = load i32, i32* @MODE_OUT, align 4
  %21 = call i32 @newkeys_to_blob(%struct.sshbuf* %18, %struct.ssh* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %121, label %23

23:                                               ; preds = %17
  %24 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %25 = load %struct.ssh*, %struct.ssh** %4, align 8
  %26 = load i32, i32* @MODE_IN, align 4
  %27 = call i32 @newkeys_to_blob(%struct.sshbuf* %24, %struct.ssh* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %121, label %29

29:                                               ; preds = %23
  %30 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %31 = load %struct.session_state*, %struct.session_state** %6, align 8
  %32 = getelementptr inbounds %struct.session_state, %struct.session_state* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sshbuf_put_u64(%struct.sshbuf* %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %121, label %36

36:                                               ; preds = %29
  %37 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %38 = load %struct.session_state*, %struct.session_state** %6, align 8
  %39 = getelementptr inbounds %struct.session_state, %struct.session_state* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @sshbuf_put_u32(%struct.sshbuf* %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %121, label %43

43:                                               ; preds = %36
  %44 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %45 = load %struct.session_state*, %struct.session_state** %6, align 8
  %46 = getelementptr inbounds %struct.session_state, %struct.session_state* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sshbuf_put_u32(%struct.sshbuf* %44, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %121, label %51

51:                                               ; preds = %43
  %52 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %53 = load %struct.session_state*, %struct.session_state** %6, align 8
  %54 = getelementptr inbounds %struct.session_state, %struct.session_state* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sshbuf_put_u64(%struct.sshbuf* %52, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %121, label %59

59:                                               ; preds = %51
  %60 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %61 = load %struct.session_state*, %struct.session_state** %6, align 8
  %62 = getelementptr inbounds %struct.session_state, %struct.session_state* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sshbuf_put_u32(%struct.sshbuf* %60, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %121, label %67

67:                                               ; preds = %59
  %68 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %69 = load %struct.session_state*, %struct.session_state** %6, align 8
  %70 = getelementptr inbounds %struct.session_state, %struct.session_state* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sshbuf_put_u64(%struct.sshbuf* %68, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %121, label %75

75:                                               ; preds = %67
  %76 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %77 = load %struct.session_state*, %struct.session_state** %6, align 8
  %78 = getelementptr inbounds %struct.session_state, %struct.session_state* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @sshbuf_put_u32(%struct.sshbuf* %76, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %121, label %83

83:                                               ; preds = %75
  %84 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %85 = load %struct.session_state*, %struct.session_state** %6, align 8
  %86 = getelementptr inbounds %struct.session_state, %struct.session_state* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @sshbuf_put_u64(%struct.sshbuf* %84, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %121, label %91

91:                                               ; preds = %83
  %92 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %93 = load %struct.session_state*, %struct.session_state** %6, align 8
  %94 = getelementptr inbounds %struct.session_state, %struct.session_state* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @sshbuf_put_u32(%struct.sshbuf* %92, i32 %96)
  store i32 %97, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %121, label %99

99:                                               ; preds = %91
  %100 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %101 = load %struct.session_state*, %struct.session_state** %6, align 8
  %102 = getelementptr inbounds %struct.session_state, %struct.session_state* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @sshbuf_put_u64(%struct.sshbuf* %100, i32 %104)
  store i32 %105, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %99
  %108 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %109 = load %struct.session_state*, %struct.session_state** %6, align 8
  %110 = getelementptr inbounds %struct.session_state, %struct.session_state* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %108, i32 %111)
  store i32 %112, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %107
  %115 = load %struct.sshbuf*, %struct.sshbuf** %5, align 8
  %116 = load %struct.session_state*, %struct.session_state** %6, align 8
  %117 = getelementptr inbounds %struct.session_state, %struct.session_state* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @sshbuf_put_stringb(%struct.sshbuf* %115, i32 %118)
  store i32 %119, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %114, %107, %99, %91, %83, %75, %67, %59, %51, %43, %36, %29, %23, %17, %2
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %124

123:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %121
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @kex_to_blob(%struct.sshbuf*, i32) #1

declare dso_local i32 @newkeys_to_blob(%struct.sshbuf*, %struct.ssh*, i32) #1

declare dso_local i32 @sshbuf_put_u64(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_u32(%struct.sshbuf*, i32) #1

declare dso_local i32 @sshbuf_put_stringb(%struct.sshbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
