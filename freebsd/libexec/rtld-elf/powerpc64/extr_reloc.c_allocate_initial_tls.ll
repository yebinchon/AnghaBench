; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/powerpc64/extr_reloc.c_allocate_initial_tls.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/powerpc64/extr_reloc.c_allocate_initial_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tls_last_offset = common dso_local global i64 0, align 8
@tls_last_size = common dso_local global i64 0, align 8
@RTLD_STATIC_TLS_EXTRA = common dso_local global i64 0, align 8
@tls_static_space = common dso_local global i64 0, align 8
@TLS_TCB_SIZE = common dso_local global i32 0, align 4
@TLS_TP_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @allocate_initial_tls(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32**, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i64, i64* @tls_last_offset, align 8
  %5 = load i64, i64* @tls_last_size, align 8
  %6 = add nsw i64 %4, %5
  %7 = load i64, i64* @RTLD_STATIC_TLS_EXTRA, align 8
  %8 = add nsw i64 %6, %7
  store i64 %8, i64* @tls_static_space, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @TLS_TCB_SIZE, align 4
  %11 = call i64 @allocate_tls(i32* %9, i32* null, i32 %10, i32 16)
  %12 = inttoptr i64 %11 to i8*
  %13 = load i32, i32* @TLS_TP_OFFSET, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i32, i32* @TLS_TCB_SIZE, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = bitcast i8* %18 to i32**
  store i32** %19, i32*** %3, align 8
  %20 = load i32**, i32*** %3, align 8
  call void asm sideeffect "mr 13,$0", "r,~{dirflag},~{fpsr},~{flags}"(i32** %20) #2, !srcloc !2
  ret void
}

declare dso_local i64 @allocate_tls(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 684}
