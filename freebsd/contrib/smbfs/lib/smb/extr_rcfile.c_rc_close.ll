; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/lib/smb/extr_rcfile.c_rc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcfile = type { %struct.rcfile*, i32, i32 }
%struct.rcsection = type { i32 }

@rs_next = common dso_local global i32 0, align 4
@pf_head = common dso_local global i32 0, align 4
@rcfile = common dso_local global i32 0, align 4
@rf_next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rc_close(%struct.rcfile* %0) #0 {
  %2 = alloca %struct.rcfile*, align 8
  %3 = alloca %struct.rcsection*, align 8
  %4 = alloca %struct.rcsection*, align 8
  store %struct.rcfile* %0, %struct.rcfile** %2, align 8
  %5 = load %struct.rcfile*, %struct.rcfile** %2, align 8
  %6 = getelementptr inbounds %struct.rcfile, %struct.rcfile* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @fclose(i32 %7)
  %9 = load %struct.rcfile*, %struct.rcfile** %2, align 8
  %10 = getelementptr inbounds %struct.rcfile, %struct.rcfile* %9, i32 0, i32 1
  %11 = call %struct.rcsection* @SLIST_FIRST(i32* %10)
  store %struct.rcsection* %11, %struct.rcsection** %3, align 8
  br label %12

12:                                               ; preds = %15, %1
  %13 = load %struct.rcsection*, %struct.rcsection** %3, align 8
  %14 = icmp ne %struct.rcsection* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.rcsection*, %struct.rcsection** %3, align 8
  store %struct.rcsection* %16, %struct.rcsection** %4, align 8
  %17 = load %struct.rcsection*, %struct.rcsection** %3, align 8
  %18 = load i32, i32* @rs_next, align 4
  %19 = call %struct.rcsection* @SLIST_NEXT(%struct.rcsection* %17, i32 %18)
  store %struct.rcsection* %19, %struct.rcsection** %3, align 8
  %20 = load %struct.rcfile*, %struct.rcfile** %2, align 8
  %21 = load %struct.rcsection*, %struct.rcsection** %4, align 8
  %22 = call i32 @rc_freesect(%struct.rcfile* %20, %struct.rcsection* %21)
  br label %12

23:                                               ; preds = %12
  %24 = load %struct.rcfile*, %struct.rcfile** %2, align 8
  %25 = getelementptr inbounds %struct.rcfile, %struct.rcfile* %24, i32 0, i32 0
  %26 = load %struct.rcfile*, %struct.rcfile** %25, align 8
  %27 = call i32 @free(%struct.rcfile* %26)
  %28 = load %struct.rcfile*, %struct.rcfile** %2, align 8
  %29 = load i32, i32* @rcfile, align 4
  %30 = load i32, i32* @rf_next, align 4
  %31 = call i32 @SLIST_REMOVE(i32* @pf_head, %struct.rcfile* %28, i32 %29, i32 %30)
  %32 = load %struct.rcfile*, %struct.rcfile** %2, align 8
  %33 = call i32 @free(%struct.rcfile* %32)
  ret i32 0
}

declare dso_local i32 @fclose(i32) #1

declare dso_local %struct.rcsection* @SLIST_FIRST(i32*) #1

declare dso_local %struct.rcsection* @SLIST_NEXT(%struct.rcsection*, i32) #1

declare dso_local i32 @rc_freesect(%struct.rcfile*, %struct.rcsection*) #1

declare dso_local i32 @free(%struct.rcfile*) #1

declare dso_local i32 @SLIST_REMOVE(i32*, %struct.rcfile*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
