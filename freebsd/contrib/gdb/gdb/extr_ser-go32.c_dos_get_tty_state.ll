; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_get_tty_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ser-go32.c_dos_get_tty_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dos_ttystate = type { i64 }
%struct.serial = type { i64 }

@ports = common dso_local global %struct.dos_ttystate* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.serial*)* @dos_get_tty_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dos_get_tty_state(%struct.serial* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.serial*, align 8
  %4 = alloca %struct.dos_ttystate*, align 8
  %5 = alloca %struct.dos_ttystate*, align 8
  store %struct.serial* %0, %struct.serial** %3, align 8
  %6 = load %struct.dos_ttystate*, %struct.dos_ttystate** @ports, align 8
  %7 = load %struct.serial*, %struct.serial** %3, align 8
  %8 = getelementptr inbounds %struct.serial, %struct.serial* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %6, i64 %9
  store %struct.dos_ttystate* %10, %struct.dos_ttystate** %4, align 8
  %11 = load %struct.dos_ttystate*, %struct.dos_ttystate** %4, align 8
  %12 = getelementptr inbounds %struct.dos_ttystate, %struct.dos_ttystate* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %1
  %16 = load %struct.serial*, %struct.serial** %3, align 8
  %17 = getelementptr inbounds %struct.serial, %struct.serial* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %18, 3
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load %struct.serial*, %struct.serial** %3, align 8
  %22 = getelementptr inbounds %struct.serial, %struct.serial* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @isatty(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20, %15
  store i32* null, i32** %2, align 8
  br label %38

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %1
  %30 = call i64 @xmalloc(i32 8)
  %31 = inttoptr i64 %30 to %struct.dos_ttystate*
  store %struct.dos_ttystate* %31, %struct.dos_ttystate** %5, align 8
  %32 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %33 = load %struct.dos_ttystate*, %struct.dos_ttystate** %4, align 8
  %34 = bitcast %struct.dos_ttystate* %32 to i8*
  %35 = bitcast %struct.dos_ttystate* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false)
  %36 = load %struct.dos_ttystate*, %struct.dos_ttystate** %5, align 8
  %37 = bitcast %struct.dos_ttystate* %36 to i32*
  store i32* %37, i32** %2, align 8
  br label %38

38:                                               ; preds = %29, %27
  %39 = load i32*, i32** %2, align 8
  ret i32* %39
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i64 @xmalloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
