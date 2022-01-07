; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_cxa_thread_atexit_impl.c_walk_cb_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_cxa_thread_atexit_impl.c_walk_cb_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxa_thread_dtor = type { i32 (i32)*, i32, i32 }
%struct.dl_phdr_info = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"__cxa_thread_call_dtors: dtr %p from unloaded dso, skipping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxa_thread_dtor*)* @walk_cb_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_cb_call(%struct.cxa_thread_dtor* %0) #0 {
  %2 = alloca %struct.cxa_thread_dtor*, align 8
  %3 = alloca %struct.dl_phdr_info, align 4
  store %struct.cxa_thread_dtor* %0, %struct.cxa_thread_dtor** %2, align 8
  %4 = load %struct.cxa_thread_dtor*, %struct.cxa_thread_dtor** %2, align 8
  %5 = getelementptr inbounds %struct.cxa_thread_dtor, %struct.cxa_thread_dtor* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @_rtld_addr_phdr(i32 %6, %struct.dl_phdr_info* %3)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load %struct.cxa_thread_dtor*, %struct.cxa_thread_dtor** %2, align 8
  %11 = getelementptr inbounds %struct.cxa_thread_dtor, %struct.cxa_thread_dtor* %10, i32 0, i32 0
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = call i64 @__elf_phdr_match_addr(%struct.dl_phdr_info* %3, i32 (i32)* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %9
  %16 = load %struct.cxa_thread_dtor*, %struct.cxa_thread_dtor** %2, align 8
  %17 = getelementptr inbounds %struct.cxa_thread_dtor, %struct.cxa_thread_dtor* %16, i32 0, i32 0
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load %struct.cxa_thread_dtor*, %struct.cxa_thread_dtor** %2, align 8
  %20 = getelementptr inbounds %struct.cxa_thread_dtor, %struct.cxa_thread_dtor* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 %18(i32 %21)
  br label %30

23:                                               ; preds = %9, %1
  %24 = load i32, i32* @stderr, align 4
  %25 = load %struct.cxa_thread_dtor*, %struct.cxa_thread_dtor** %2, align 8
  %26 = getelementptr inbounds %struct.cxa_thread_dtor, %struct.cxa_thread_dtor* %25, i32 0, i32 0
  %27 = load i32 (i32)*, i32 (i32)** %26, align 8
  %28 = bitcast i32 (i32)* %27 to i8*
  %29 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %23, %15
  ret void
}

declare dso_local i64 @_rtld_addr_phdr(i32, %struct.dl_phdr_info*) #1

declare dso_local i64 @__elf_phdr_match_addr(%struct.dl_phdr_info*, i32 (i32)*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
