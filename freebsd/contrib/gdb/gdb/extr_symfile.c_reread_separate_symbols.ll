; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_reread_separate_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_symfile.c_reread_separate_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.objfile*, i32 }

@info_verbose = common dso_local global i32 0, align 4
@OBJF_REORDERED = common dso_local global i32 0, align 4
@OBJF_SHARED = common dso_local global i32 0, align 4
@OBJF_READNOW = common dso_local global i32 0, align 4
@OBJF_USERLOADED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.objfile*)* @reread_separate_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reread_separate_symbols(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %5 = load %struct.objfile*, %struct.objfile** %2, align 8
  %6 = call i8* @find_separate_debug_file(%struct.objfile* %5)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.objfile*, %struct.objfile** %2, align 8
  %8 = getelementptr inbounds %struct.objfile, %struct.objfile* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.objfile*, %struct.objfile** %2, align 8
  %17 = getelementptr inbounds %struct.objfile, %struct.objfile* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @strcmp(i8* %15, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14, %11
  %24 = load %struct.objfile*, %struct.objfile** %2, align 8
  %25 = getelementptr inbounds %struct.objfile, %struct.objfile* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i32 @free_objfile(%struct.TYPE_3__* %26)
  br label %28

28:                                               ; preds = %23, %14
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i8*, i8** %3, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %65

32:                                               ; preds = %29
  %33 = load %struct.objfile*, %struct.objfile** %2, align 8
  %34 = getelementptr inbounds %struct.objfile, %struct.objfile* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %65, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* @info_verbose, align 4
  %40 = load %struct.objfile*, %struct.objfile** %2, align 8
  %41 = getelementptr inbounds %struct.objfile, %struct.objfile* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.objfile*, %struct.objfile** %2, align 8
  %44 = getelementptr inbounds %struct.objfile, %struct.objfile* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.objfile*, %struct.objfile** %2, align 8
  %47 = getelementptr inbounds %struct.objfile, %struct.objfile* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @OBJF_REORDERED, align 4
  %50 = load i32, i32* @OBJF_SHARED, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @OBJF_READNOW, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @OBJF_USERLOADED, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %48, %55
  %57 = call %struct.TYPE_3__* @symbol_file_add_with_addrs_or_offsets(i8* %38, i32 %39, i32 0, i32 %42, i32 %45, i32 0, i32 %56)
  %58 = load %struct.objfile*, %struct.objfile** %2, align 8
  %59 = getelementptr inbounds %struct.objfile, %struct.objfile* %58, i32 0, i32 1
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %59, align 8
  %60 = load %struct.objfile*, %struct.objfile** %2, align 8
  %61 = load %struct.objfile*, %struct.objfile** %2, align 8
  %62 = getelementptr inbounds %struct.objfile, %struct.objfile* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  store %struct.objfile* %60, %struct.objfile** %64, align 8
  br label %65

65:                                               ; preds = %37, %32, %29
  ret void
}

declare dso_local i8* @find_separate_debug_file(%struct.objfile*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @free_objfile(%struct.TYPE_3__*) #1

declare dso_local %struct.TYPE_3__* @symbol_file_add_with_addrs_or_offsets(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
