; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_handle_start_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_handle_start_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entries_accumulator = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ENTRIES_TAG_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8**)* @handle_start_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_start_tag(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.entries_accumulator*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** %2, i8*** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.entries_accumulator*
  store %struct.entries_accumulator* %12, %struct.entries_accumulator** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @ENTRIES_TAG_ENTRY, align 4
  %15 = call i64 @strcmp(i8* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %50

18:                                               ; preds = %3
  %19 = load %struct.entries_accumulator*, %struct.entries_accumulator** %7, align 8
  %20 = getelementptr inbounds %struct.entries_accumulator, %struct.entries_accumulator* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @svn_pool_clear(i32 %21)
  %23 = load i8**, i8*** %6, align 8
  %24 = load %struct.entries_accumulator*, %struct.entries_accumulator** %7, align 8
  %25 = getelementptr inbounds %struct.entries_accumulator, %struct.entries_accumulator* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @svn_xml_make_att_hash(i8** %23, i32 %26)
  store i32* %27, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.entries_accumulator*, %struct.entries_accumulator** %7, align 8
  %30 = getelementptr inbounds %struct.entries_accumulator, %struct.entries_accumulator* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @atts_to_entry(%struct.TYPE_4__** %9, i32* %28, i32 %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %18
  %36 = load i32*, i32** %10, align 8
  %37 = load %struct.entries_accumulator*, %struct.entries_accumulator** %7, align 8
  %38 = getelementptr inbounds %struct.entries_accumulator, %struct.entries_accumulator* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @svn_xml_signal_bailout(i32* %36, i32 %39)
  br label %50

41:                                               ; preds = %18
  %42 = load %struct.entries_accumulator*, %struct.entries_accumulator** %7, align 8
  %43 = getelementptr inbounds %struct.entries_accumulator, %struct.entries_accumulator* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = call i32 @svn_hash_sets(i32 %44, i32 %47, %struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %41, %35, %17
  ret void
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @svn_pool_clear(i32) #1

declare dso_local i32* @svn_xml_make_att_hash(i8**, i32) #1

declare dso_local i32* @atts_to_entry(%struct.TYPE_4__**, i32*, i32) #1

declare dso_local i32 @svn_xml_signal_bailout(i32*, i32) #1

declare dso_local i32 @svn_hash_sets(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
