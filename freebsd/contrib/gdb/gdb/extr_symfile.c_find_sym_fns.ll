; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_find_sym_fns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_find_sym_fns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_fns = type { i32, %struct.sym_fns* }
%struct.objfile = type { i32, %struct.sym_fns* }

@bfd_target_srec_flavour = common dso_local global i32 0, align 4
@bfd_target_ihex_flavour = common dso_local global i32 0, align 4
@bfd_target_tekhex_flavour = common dso_local global i32 0, align 4
@symtab_fns = common dso_local global %struct.sym_fns* null, align 8
@.str = private unnamed_addr constant [63 x i8] c"I'm sorry, Dave, I can't do that.  Symbol format `%s' unknown.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @find_sym_fns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_sym_fns(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca %struct.sym_fns*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %6 = load %struct.objfile*, %struct.objfile** %2, align 8
  %7 = getelementptr inbounds %struct.objfile, %struct.objfile* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @bfd_get_flavour(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.objfile*, %struct.objfile** %2, align 8
  %11 = getelementptr inbounds %struct.objfile, %struct.objfile* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i8* @bfd_get_target(i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @bfd_target_srec_flavour, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @bfd_target_ihex_flavour, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @bfd_target_tekhex_flavour, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17, %1
  br label %52

26:                                               ; preds = %21
  %27 = load %struct.sym_fns*, %struct.sym_fns** @symtab_fns, align 8
  store %struct.sym_fns* %27, %struct.sym_fns** %3, align 8
  br label %28

28:                                               ; preds = %42, %26
  %29 = load %struct.sym_fns*, %struct.sym_fns** %3, align 8
  %30 = icmp ne %struct.sym_fns* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.sym_fns*, %struct.sym_fns** %3, align 8
  %34 = getelementptr inbounds %struct.sym_fns, %struct.sym_fns* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.sym_fns*, %struct.sym_fns** %3, align 8
  %39 = load %struct.objfile*, %struct.objfile** %2, align 8
  %40 = getelementptr inbounds %struct.objfile, %struct.objfile* %39, i32 0, i32 1
  store %struct.sym_fns* %38, %struct.sym_fns** %40, align 8
  br label %52

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.sym_fns*, %struct.sym_fns** %3, align 8
  %44 = getelementptr inbounds %struct.sym_fns, %struct.sym_fns* %43, i32 0, i32 1
  %45 = load %struct.sym_fns*, %struct.sym_fns** %44, align 8
  store %struct.sym_fns* %45, %struct.sym_fns** %3, align 8
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.objfile*, %struct.objfile** %2, align 8
  %48 = getelementptr inbounds %struct.objfile, %struct.objfile* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @bfd_get_target(i32 %49)
  %51 = call i32 @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %46, %37, %25
  ret void
}

declare dso_local i32 @bfd_get_flavour(i32) #1

declare dso_local i8* @bfd_get_target(i32) #1

declare dso_local i32 @error(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
