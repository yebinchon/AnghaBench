; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck/extr_fsck.c_addentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck/extr_fsck.c_addentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fstypelist = type { i32 }
%struct.entry = type { i8*, i8* }

@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fstypelist*, i8*, i8*)* @addentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addentry(%struct.fstypelist* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.fstypelist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.entry*, align 8
  store %struct.fstypelist* %0, %struct.fstypelist** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call %struct.entry* @emalloc(i32 16)
  store %struct.entry* %8, %struct.entry** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @estrdup(i8* %9)
  %11 = load %struct.entry*, %struct.entry** %7, align 8
  %12 = getelementptr inbounds %struct.entry, %struct.entry* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @estrdup(i8* %13)
  %15 = load %struct.entry*, %struct.entry** %7, align 8
  %16 = getelementptr inbounds %struct.entry, %struct.entry* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.fstypelist*, %struct.fstypelist** %4, align 8
  %18 = load %struct.entry*, %struct.entry** %7, align 8
  %19 = load i32, i32* @entries, align 4
  %20 = call i32 @TAILQ_INSERT_TAIL(%struct.fstypelist* %17, %struct.entry* %18, i32 %19)
  ret void
}

declare dso_local %struct.entry* @emalloc(i32) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.fstypelist*, %struct.entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
