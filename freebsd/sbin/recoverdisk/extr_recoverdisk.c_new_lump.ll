; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/recoverdisk/extr_recoverdisk.c_new_lump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/recoverdisk/extr_recoverdisk.c_new_lump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lump = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"Malloc failed\00", align 1
@lumps = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @new_lump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_lump(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lump*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call %struct.lump* @malloc(i32 24)
  store %struct.lump* %8, %struct.lump** %7, align 8
  %9 = load %struct.lump*, %struct.lump** %7, align 8
  %10 = icmp eq %struct.lump* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.lump*, %struct.lump** %7, align 8
  %16 = getelementptr inbounds %struct.lump, %struct.lump* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.lump*, %struct.lump** %7, align 8
  %19 = getelementptr inbounds %struct.lump, %struct.lump* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.lump*, %struct.lump** %7, align 8
  %22 = getelementptr inbounds %struct.lump, %struct.lump* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.lump*, %struct.lump** %7, align 8
  %24 = load i32, i32* @list, align 4
  %25 = call i32 @TAILQ_INSERT_TAIL(i32* @lumps, %struct.lump* %23, i32 %24)
  ret void
}

declare dso_local %struct.lump* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.lump*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
