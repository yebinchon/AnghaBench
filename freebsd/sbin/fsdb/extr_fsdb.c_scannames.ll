; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdb.c_scannames.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdb.c_scannames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inodesc = type { %struct.direct* }
%struct.direct = type { i32, i32, i64, i8*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"slot %d off %d ino %d reclen %d: %s, `%.*s'\0A\00", align 1
@slot = common dso_local global i32 0, align 4
@diroff = common dso_local global i32 0, align 4
@typename = common dso_local global i8** null, align 8
@KEEPON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scannames(%struct.inodesc* %0) #0 {
  %2 = alloca %struct.inodesc*, align 8
  %3 = alloca %struct.direct*, align 8
  store %struct.inodesc* %0, %struct.inodesc** %2, align 8
  %4 = load %struct.inodesc*, %struct.inodesc** %2, align 8
  %5 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %4, i32 0, i32 0
  %6 = load %struct.direct*, %struct.direct** %5, align 8
  store %struct.direct* %6, %struct.direct** %3, align 8
  %7 = load i32, i32* @slot, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @slot, align 4
  %9 = load i32, i32* @diroff, align 4
  %10 = load %struct.direct*, %struct.direct** %3, align 8
  %11 = getelementptr inbounds %struct.direct, %struct.direct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.direct*, %struct.direct** %3, align 8
  %14 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i8**, i8*** @typename, align 8
  %17 = load %struct.direct*, %struct.direct** %3, align 8
  %18 = getelementptr inbounds %struct.direct, %struct.direct* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i8*, i8** %16, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.direct*, %struct.direct** %3, align 8
  %23 = getelementptr inbounds %struct.direct, %struct.direct* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.direct*, %struct.direct** %3, align 8
  %26 = getelementptr inbounds %struct.direct, %struct.direct* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %9, i32 %12, i32 %15, i8* %21, i8* %24, i32 %27)
  %29 = load %struct.direct*, %struct.direct** %3, align 8
  %30 = getelementptr inbounds %struct.direct, %struct.direct* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @diroff, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* @diroff, align 4
  %34 = load i32, i32* @KEEPON, align 4
  ret i32 %34
}

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
