; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_pivot_factory.c_free_src.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_pivot_factory.c_free_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src_head = type { i32 }
%struct.src_entry = type { %struct.src_entry*, i32 }

@se_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.src_head*)* @free_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_src(%struct.src_head* %0) #0 {
  %2 = alloca %struct.src_head*, align 8
  %3 = alloca %struct.src_entry*, align 8
  store %struct.src_head* %0, %struct.src_head** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.src_head*, %struct.src_head** %2, align 8
  %6 = call %struct.src_entry* @STAILQ_FIRST(%struct.src_head* %5)
  store %struct.src_entry* %6, %struct.src_entry** %3, align 8
  %7 = icmp ne %struct.src_entry* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load %struct.src_head*, %struct.src_head** %2, align 8
  %10 = load i32, i32* @se_entry, align 4
  %11 = call i32 @STAILQ_REMOVE_HEAD(%struct.src_head* %9, i32 %10)
  %12 = load %struct.src_entry*, %struct.src_entry** %3, align 8
  %13 = getelementptr inbounds %struct.src_entry, %struct.src_entry* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @_db_factory_free(i32 %14)
  %16 = load %struct.src_entry*, %struct.src_entry** %3, align 8
  %17 = getelementptr inbounds %struct.src_entry, %struct.src_entry* %16, i32 0, i32 0
  %18 = load %struct.src_entry*, %struct.src_entry** %17, align 8
  %19 = call i32 @free(%struct.src_entry* %18)
  %20 = load %struct.src_entry*, %struct.src_entry** %3, align 8
  %21 = call i32 @free(%struct.src_entry* %20)
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local %struct.src_entry* @STAILQ_FIRST(%struct.src_head*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(%struct.src_head*, i32) #1

declare dso_local i32 @_db_factory_free(i32) #1

declare dso_local i32 @free(%struct.src_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
