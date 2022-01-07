; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_interface.c_db_show_mdpcpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_interface.c_db_show_mdpcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"self         = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"curpmap      = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"tssp         = %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"rsp0         = 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"kcr3         = 0x%lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"ucr3         = 0x%lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"scr3         = 0x%lx\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"gs32p        = %p\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"ldt          = %p\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"tss          = %p\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"tlb gen      = %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_show_mdpcpu(%struct.pcpu* %0) #0 {
  %2 = alloca %struct.pcpu*, align 8
  store %struct.pcpu* %0, %struct.pcpu** %2, align 8
  %3 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %4 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %3, i32 0, i32 10
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @db_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %8 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @db_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %9)
  %11 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %12 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @db_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %13)
  %15 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %16 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @db_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %20 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @db_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %24 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @db_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  %27 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %28 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @db_printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %29)
  %31 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %32 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @db_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %33)
  %35 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %36 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @db_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %37)
  %39 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %40 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @db_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %41)
  %43 = load %struct.pcpu*, %struct.pcpu** %2, align 8
  %44 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @db_printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %45)
  ret void
}

declare dso_local i32 @db_printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
