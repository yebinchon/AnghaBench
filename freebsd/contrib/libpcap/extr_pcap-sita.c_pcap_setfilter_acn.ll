; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_pcap_setfilter_acn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-sita.c_pcap_setfilter_acn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.bpf_program = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"F\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.bpf_program*)* @pcap_setfilter_acn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_setfilter_acn(%struct.TYPE_3__* %0, %struct.bpf_program* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.bpf_program*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_insn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.bpf_program* %1, %struct.bpf_program** %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @send_to_fd(i32 %14, i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %17 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @htonl(i32 %19)
  store i64 %20, i64* %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = bitcast i64* %10 to i8*
  %23 = call i32 @send_to_fd(i32 %21, i32 4, i8* %22)
  %24 = load %struct.bpf_program*, %struct.bpf_program** %5, align 8
  %25 = getelementptr inbounds %struct.bpf_program, %struct.bpf_program* %24, i32 0, i32 1
  %26 = load %struct.bpf_insn*, %struct.bpf_insn** %25, align 8
  store %struct.bpf_insn* %26, %struct.bpf_insn** %8, align 8
  br label %27

27:                                               ; preds = %31, %2
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %27
  %32 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %33 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @htons(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %37 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @htonl(i32 %38)
  store i64 %39, i64* %10, align 8
  %40 = load i32, i32* %6, align 4
  %41 = bitcast i32* %9 to i8*
  %42 = call i32 @send_to_fd(i32 %40, i32 2, i8* %41)
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %45 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %44, i32 0, i32 2
  %46 = bitcast i32* %45 to i8*
  %47 = call i32 @send_to_fd(i32 %43, i32 1, i8* %46)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %50 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %49, i32 0, i32 1
  %51 = bitcast i32* %50 to i8*
  %52 = call i32 @send_to_fd(i32 %48, i32 1, i8* %51)
  %53 = load i32, i32* %6, align 4
  %54 = bitcast i64* %10 to i8*
  %55 = call i32 @send_to_fd(i32 %53, i32 4, i8* %54)
  %56 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %57 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %56, i32 1
  store %struct.bpf_insn* %57, %struct.bpf_insn** %8, align 8
  br label %27

58:                                               ; preds = %27
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @get_error_response(i32 %59, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 -1, i32* %3, align 4
  br label %64

63:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @send_to_fd(i32, i32, i8*) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @get_error_response(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
