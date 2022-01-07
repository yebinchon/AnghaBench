; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_mbuf.c_mb_put_pstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_mbuf.c_mb_put_pstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbdata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mb_put_pstring(%struct.mbdata* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mbdata* %0, %struct.mbdata** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @strlen(i8* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp sgt i32 %10, 255
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 255, i32* %7, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = load %struct.mbdata*, %struct.mbdata** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @mb_put_uint8(%struct.mbdata* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %25

20:                                               ; preds = %13
  %21 = load %struct.mbdata*, %struct.mbdata** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @mb_put_mem(%struct.mbdata* %21, i8* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbdata*, i32) #1

declare dso_local i32 @mb_put_mem(%struct.mbdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
