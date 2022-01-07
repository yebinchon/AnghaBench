; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_free_dir_q.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libauditd/extr_auditd_lib.c_free_dir_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_ent = type { %struct.dir_ent* }

@dir_q = common dso_local global i32 0, align 4
@dirs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_dir_q to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dir_q() #0 {
  %1 = alloca %struct.dir_ent*, align 8
  %2 = alloca %struct.dir_ent*, align 8
  %3 = call %struct.dir_ent* @TAILQ_FIRST(i32* @dir_q)
  store %struct.dir_ent* %3, %struct.dir_ent** %1, align 8
  br label %4

4:                                                ; preds = %7, %0
  %5 = load %struct.dir_ent*, %struct.dir_ent** %1, align 8
  %6 = icmp ne %struct.dir_ent* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %4
  %8 = load %struct.dir_ent*, %struct.dir_ent** %1, align 8
  %9 = load i32, i32* @dirs, align 4
  %10 = call %struct.dir_ent* @TAILQ_NEXT(%struct.dir_ent* %8, i32 %9)
  store %struct.dir_ent* %10, %struct.dir_ent** %2, align 8
  %11 = load %struct.dir_ent*, %struct.dir_ent** %1, align 8
  %12 = getelementptr inbounds %struct.dir_ent, %struct.dir_ent* %11, i32 0, i32 0
  %13 = load %struct.dir_ent*, %struct.dir_ent** %12, align 8
  %14 = call i32 @free(%struct.dir_ent* %13)
  %15 = load %struct.dir_ent*, %struct.dir_ent** %1, align 8
  %16 = call i32 @free(%struct.dir_ent* %15)
  %17 = load %struct.dir_ent*, %struct.dir_ent** %2, align 8
  store %struct.dir_ent* %17, %struct.dir_ent** %1, align 8
  br label %4

18:                                               ; preds = %4
  %19 = call i32 @TAILQ_INIT(i32* @dir_q)
  ret void
}

declare dso_local %struct.dir_ent* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.dir_ent* @TAILQ_NEXT(%struct.dir_ent*, i32) #1

declare dso_local i32 @free(%struct.dir_ent*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
