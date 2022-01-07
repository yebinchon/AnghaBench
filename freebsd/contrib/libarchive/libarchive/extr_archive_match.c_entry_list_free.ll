; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_entry_list_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_entry_list_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry_list = type { %struct.match_file* }
%struct.match_file = type { i32, %struct.match_file* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.entry_list*)* @entry_list_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @entry_list_free(%struct.entry_list* %0) #0 {
  %2 = alloca %struct.entry_list*, align 8
  %3 = alloca %struct.match_file*, align 8
  %4 = alloca %struct.match_file*, align 8
  store %struct.entry_list* %0, %struct.entry_list** %2, align 8
  %5 = load %struct.entry_list*, %struct.entry_list** %2, align 8
  %6 = getelementptr inbounds %struct.entry_list, %struct.entry_list* %5, i32 0, i32 0
  %7 = load %struct.match_file*, %struct.match_file** %6, align 8
  store %struct.match_file* %7, %struct.match_file** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.match_file*, %struct.match_file** %3, align 8
  %10 = icmp ne %struct.match_file* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load %struct.match_file*, %struct.match_file** %3, align 8
  store %struct.match_file* %12, %struct.match_file** %4, align 8
  %13 = load %struct.match_file*, %struct.match_file** %3, align 8
  %14 = getelementptr inbounds %struct.match_file, %struct.match_file* %13, i32 0, i32 1
  %15 = load %struct.match_file*, %struct.match_file** %14, align 8
  store %struct.match_file* %15, %struct.match_file** %3, align 8
  %16 = load %struct.match_file*, %struct.match_file** %4, align 8
  %17 = getelementptr inbounds %struct.match_file, %struct.match_file* %16, i32 0, i32 0
  %18 = call i32 @archive_mstring_clean(i32* %17)
  %19 = load %struct.match_file*, %struct.match_file** %4, align 8
  %20 = call i32 @free(%struct.match_file* %19)
  br label %8

21:                                               ; preds = %8
  ret void
}

declare dso_local i32 @archive_mstring_clean(i32*) #1

declare dso_local i32 @free(%struct.match_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
