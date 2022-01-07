; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afssys.c_k_afs_cell_of_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kafs/extr_afssys.c_k_afs_cell_of_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ViceIoctl = type { i8*, i32, i64, i32* }

@VIOC_FILE_CELL_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @k_afs_cell_of_file(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ViceIoctl, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.ViceIoctl, %struct.ViceIoctl* %7, i32 0, i32 3
  store i32* null, i32** %8, align 8
  %9 = getelementptr inbounds %struct.ViceIoctl, %struct.ViceIoctl* %7, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds %struct.ViceIoctl, %struct.ViceIoctl* %7, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.ViceIoctl, %struct.ViceIoctl* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @rk_UNCONST(i8* %14)
  %16 = load i32, i32* @VIOC_FILE_CELL_NAME, align 4
  %17 = call i32 @k_pioctl(i32 %15, i32 %16, %struct.ViceIoctl* %7, i32 1)
  ret i32 %17
}

declare dso_local i32 @k_pioctl(i32, i32, %struct.ViceIoctl*, i32) #1

declare dso_local i32 @rk_UNCONST(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
