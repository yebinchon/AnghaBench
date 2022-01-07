; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_freesect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_freesect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcfile = type { i32 }
%struct.rcsection = type { %struct.rcsection*, i32 }
%struct.rckey = type { i32 }

@rcsection = common dso_local global i32 0, align 4
@rs_next = common dso_local global i32 0, align 4
@rk_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcfile*, %struct.rcsection*)* @rc_freesect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_freesect(%struct.rcfile* %0, %struct.rcsection* %1) #0 {
  %3 = alloca %struct.rcfile*, align 8
  %4 = alloca %struct.rcsection*, align 8
  %5 = alloca %struct.rckey*, align 8
  %6 = alloca %struct.rckey*, align 8
  store %struct.rcfile* %0, %struct.rcfile** %3, align 8
  store %struct.rcsection* %1, %struct.rcsection** %4, align 8
  %7 = load %struct.rcfile*, %struct.rcfile** %3, align 8
  %8 = getelementptr inbounds %struct.rcfile, %struct.rcfile* %7, i32 0, i32 0
  %9 = load %struct.rcsection*, %struct.rcsection** %4, align 8
  %10 = load i32, i32* @rcsection, align 4
  %11 = load i32, i32* @rs_next, align 4
  %12 = call i32 @SLIST_REMOVE(i32* %8, %struct.rcsection* %9, i32 %10, i32 %11)
  %13 = load %struct.rcsection*, %struct.rcsection** %4, align 8
  %14 = getelementptr inbounds %struct.rcsection, %struct.rcsection* %13, i32 0, i32 1
  %15 = call %struct.rckey* @SLIST_FIRST(i32* %14)
  store %struct.rckey* %15, %struct.rckey** %5, align 8
  br label %16

16:                                               ; preds = %19, %2
  %17 = load %struct.rckey*, %struct.rckey** %5, align 8
  %18 = icmp ne %struct.rckey* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.rckey*, %struct.rckey** %5, align 8
  store %struct.rckey* %20, %struct.rckey** %6, align 8
  %21 = load %struct.rckey*, %struct.rckey** %5, align 8
  %22 = load i32, i32* @rk_next, align 4
  %23 = call %struct.rckey* @SLIST_NEXT(%struct.rckey* %21, i32 %22)
  store %struct.rckey* %23, %struct.rckey** %5, align 8
  %24 = load %struct.rckey*, %struct.rckey** %6, align 8
  %25 = call i32 @rc_key_free(%struct.rckey* %24)
  br label %16

26:                                               ; preds = %16
  %27 = load %struct.rcsection*, %struct.rcsection** %4, align 8
  %28 = getelementptr inbounds %struct.rcsection, %struct.rcsection* %27, i32 0, i32 0
  %29 = load %struct.rcsection*, %struct.rcsection** %28, align 8
  %30 = call i32 @free(%struct.rcsection* %29)
  %31 = load %struct.rcsection*, %struct.rcsection** %4, align 8
  %32 = call i32 @free(%struct.rcsection* %31)
  ret i32 0
}

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.rcsection*, i32, i32) #1

declare dso_local %struct.rckey* @SLIST_FIRST(i32*) #1

declare dso_local %struct.rckey* @SLIST_NEXT(%struct.rckey*, i32) #1

declare dso_local i32 @rc_key_free(%struct.rckey*) #1

declare dso_local i32 @free(%struct.rcsection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
