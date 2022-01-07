; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_find_targ_sec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xcoffread.c_find_targ_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.find_targ_sec_arg = type { i64, %struct.TYPE_4__**, i32*, %struct.objfile* }
%struct.objfile = type { i32 }

@SEC_CODE = common dso_local global i32 0, align 4
@SEC_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i8*)* @find_targ_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_targ_sec(i32* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.find_targ_sec_arg*, align 8
  %8 = alloca %struct.objfile*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.find_targ_sec_arg*
  store %struct.find_targ_sec_arg* %10, %struct.find_targ_sec_arg** %7, align 8
  %11 = load %struct.find_targ_sec_arg*, %struct.find_targ_sec_arg** %7, align 8
  %12 = getelementptr inbounds %struct.find_targ_sec_arg, %struct.find_targ_sec_arg* %11, i32 0, i32 3
  %13 = load %struct.objfile*, %struct.objfile** %12, align 8
  store %struct.objfile* %13, %struct.objfile** %8, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.find_targ_sec_arg*, %struct.find_targ_sec_arg** %7, align 8
  %18 = getelementptr inbounds %struct.find_targ_sec_arg, %struct.find_targ_sec_arg* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %3
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = call i32 @bfd_get_section_flags(i32* %22, %struct.TYPE_4__* %23)
  %25 = load i32, i32* @SEC_CODE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.objfile*, %struct.objfile** %8, align 8
  %30 = call i32 @SECT_OFF_TEXT(%struct.objfile* %29)
  %31 = load %struct.find_targ_sec_arg*, %struct.find_targ_sec_arg** %7, align 8
  %32 = getelementptr inbounds %struct.find_targ_sec_arg, %struct.find_targ_sec_arg* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32 %30, i32* %33, align 4
  br label %55

34:                                               ; preds = %21
  %35 = load i32*, i32** %4, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = call i32 @bfd_get_section_flags(i32* %35, %struct.TYPE_4__* %36)
  %38 = load i32, i32* @SEC_LOAD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.objfile*, %struct.objfile** %8, align 8
  %43 = call i32 @SECT_OFF_DATA(%struct.objfile* %42)
  %44 = load %struct.find_targ_sec_arg*, %struct.find_targ_sec_arg** %7, align 8
  %45 = getelementptr inbounds %struct.find_targ_sec_arg, %struct.find_targ_sec_arg* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  store i32 %43, i32* %46, align 4
  br label %54

47:                                               ; preds = %34
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.find_targ_sec_arg*, %struct.find_targ_sec_arg** %7, align 8
  %52 = getelementptr inbounds %struct.find_targ_sec_arg, %struct.find_targ_sec_arg* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %41
  br label %55

55:                                               ; preds = %54, %28
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = load %struct.find_targ_sec_arg*, %struct.find_targ_sec_arg** %7, align 8
  %58 = getelementptr inbounds %struct.find_targ_sec_arg, %struct.find_targ_sec_arg* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %58, align 8
  store %struct.TYPE_4__* %56, %struct.TYPE_4__** %59, align 8
  br label %60

60:                                               ; preds = %55, %3
  ret void
}

declare dso_local i32 @bfd_get_section_flags(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i32 @SECT_OFF_DATA(%struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
