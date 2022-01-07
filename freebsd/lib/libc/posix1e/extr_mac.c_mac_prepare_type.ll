; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_mac.c_mac_prepare_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/posix1e/extr_mac.c_mac_prepare_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac = type { i32 }
%struct.label_default = type { i32, i32 }

@label_default_head = common dso_local global i32 0, align 4
@ld_entries = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_prepare_type(%struct.mac** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.label_default*, align 8
  %7 = alloca i32, align 4
  store %struct.mac** %0, %struct.mac*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = call i32 (...) @mac_maybe_init_internal()
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = call %struct.label_default* @LIST_FIRST(i32* @label_default_head)
  store %struct.label_default* %14, %struct.label_default** %6, align 8
  br label %15

15:                                               ; preds = %32, %13
  %16 = load %struct.label_default*, %struct.label_default** %6, align 8
  %17 = icmp ne %struct.label_default* %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.label_default*, %struct.label_default** %6, align 8
  %21 = getelementptr inbounds %struct.label_default, %struct.label_default* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i8* %19, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.mac**, %struct.mac*** %4, align 8
  %27 = load %struct.label_default*, %struct.label_default** %6, align 8
  %28 = getelementptr inbounds %struct.label_default, %struct.label_default* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mac_prepare(%struct.mac** %26, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.label_default*, %struct.label_default** %6, align 8
  %34 = load i32, i32* @ld_entries, align 4
  %35 = call %struct.label_default* @LIST_NEXT(%struct.label_default* %33, i32 %34)
  store %struct.label_default* %35, %struct.label_default** %6, align 8
  br label %15

36:                                               ; preds = %15
  %37 = load i32, i32* @ENOENT, align 4
  store i32 %37, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %25, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @mac_maybe_init_internal(...) #1

declare dso_local %struct.label_default* @LIST_FIRST(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @mac_prepare(%struct.mac**, i32) #1

declare dso_local %struct.label_default* @LIST_NEXT(%struct.label_default*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
