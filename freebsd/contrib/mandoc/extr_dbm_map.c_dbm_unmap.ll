; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm_map.c_dbm_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm_map.c_dbm_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@dbm_base = common dso_local global i8* null, align 8
@st = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"dbm_unmap: munmap\00", align 1
@ifd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"dbm_unmap: close\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dbm_unmap() #0 {
  %1 = load i8*, i8** @dbm_base, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @st, i32 0, i32 0), align 4
  %3 = call i32 @munmap(i8* %1, i32 %2)
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %0
  %8 = load i32, i32* @ifd, align 4
  %9 = call i32 @close(i32 %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %7
  store i8* inttoptr (i64 -1 to i8*), i8** @dbm_base, align 8
  ret void
}

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
