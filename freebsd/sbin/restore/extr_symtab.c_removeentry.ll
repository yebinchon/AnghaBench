; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_removeentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_removeentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry = type { %struct.entry*, %struct.entry*, %struct.entry* }

@.str = private unnamed_addr constant [33 x i8] c"cannot find entry in parent list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entry*)* @removeentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @removeentry(%struct.entry* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  %3 = alloca %struct.entry*, align 8
  store %struct.entry* %0, %struct.entry** %2, align 8
  %4 = load %struct.entry*, %struct.entry** %2, align 8
  %5 = getelementptr inbounds %struct.entry, %struct.entry* %4, i32 0, i32 2
  %6 = load %struct.entry*, %struct.entry** %5, align 8
  store %struct.entry* %6, %struct.entry** %3, align 8
  %7 = load %struct.entry*, %struct.entry** %3, align 8
  %8 = getelementptr inbounds %struct.entry, %struct.entry* %7, i32 0, i32 1
  %9 = load %struct.entry*, %struct.entry** %8, align 8
  %10 = load %struct.entry*, %struct.entry** %2, align 8
  %11 = icmp eq %struct.entry* %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.entry*, %struct.entry** %2, align 8
  %14 = getelementptr inbounds %struct.entry, %struct.entry* %13, i32 0, i32 0
  %15 = load %struct.entry*, %struct.entry** %14, align 8
  %16 = load %struct.entry*, %struct.entry** %3, align 8
  %17 = getelementptr inbounds %struct.entry, %struct.entry* %16, i32 0, i32 1
  store %struct.entry* %15, %struct.entry** %17, align 8
  br label %49

18:                                               ; preds = %1
  %19 = load %struct.entry*, %struct.entry** %3, align 8
  %20 = getelementptr inbounds %struct.entry, %struct.entry* %19, i32 0, i32 1
  %21 = load %struct.entry*, %struct.entry** %20, align 8
  store %struct.entry* %21, %struct.entry** %3, align 8
  br label %22

22:                                               ; preds = %38, %18
  %23 = load %struct.entry*, %struct.entry** %3, align 8
  %24 = icmp ne %struct.entry* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load %struct.entry*, %struct.entry** %3, align 8
  %27 = getelementptr inbounds %struct.entry, %struct.entry* %26, i32 0, i32 0
  %28 = load %struct.entry*, %struct.entry** %27, align 8
  %29 = load %struct.entry*, %struct.entry** %2, align 8
  %30 = icmp eq %struct.entry* %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.entry*, %struct.entry** %2, align 8
  %33 = getelementptr inbounds %struct.entry, %struct.entry* %32, i32 0, i32 0
  %34 = load %struct.entry*, %struct.entry** %33, align 8
  %35 = load %struct.entry*, %struct.entry** %3, align 8
  %36 = getelementptr inbounds %struct.entry, %struct.entry* %35, i32 0, i32 0
  store %struct.entry* %34, %struct.entry** %36, align 8
  br label %42

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.entry*, %struct.entry** %3, align 8
  %40 = getelementptr inbounds %struct.entry, %struct.entry* %39, i32 0, i32 0
  %41 = load %struct.entry*, %struct.entry** %40, align 8
  store %struct.entry* %41, %struct.entry** %3, align 8
  br label %22

42:                                               ; preds = %31, %22
  %43 = load %struct.entry*, %struct.entry** %3, align 8
  %44 = icmp eq %struct.entry* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.entry*, %struct.entry** %2, align 8
  %47 = call i32 @badentry(%struct.entry* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @badentry(%struct.entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
