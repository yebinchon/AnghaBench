; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_pt_section_mk_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/windows/extr_pt_section_windows.c_pt_section_mk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_sec_windows_status = type { %struct._stat }
%struct._stat = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_image = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_mk_status(i8** %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pt_sec_windows_status*, align 8
  %9 = alloca %struct._stat, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i64* %1, i64** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64*, i64** %6, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @pte_internal, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %51

19:                                               ; preds = %13
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @pt_sec_windows_fstat(i8* %20, %struct._stat* %9)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %51

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct._stat, %struct._stat* %9, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @pte_bad_image, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %51

33:                                               ; preds = %26
  %34 = call %struct.pt_sec_windows_status* @malloc(i32 8)
  store %struct.pt_sec_windows_status* %34, %struct.pt_sec_windows_status** %8, align 8
  %35 = load %struct.pt_sec_windows_status*, %struct.pt_sec_windows_status** %8, align 8
  %36 = icmp ne %struct.pt_sec_windows_status* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @pte_nomem, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %33
  %41 = load %struct.pt_sec_windows_status*, %struct.pt_sec_windows_status** %8, align 8
  %42 = getelementptr inbounds %struct.pt_sec_windows_status, %struct.pt_sec_windows_status* %41, i32 0, i32 0
  %43 = bitcast %struct._stat* %42 to i8*
  %44 = bitcast %struct._stat* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 8, i1 false)
  %45 = load %struct.pt_sec_windows_status*, %struct.pt_sec_windows_status** %8, align 8
  %46 = bitcast %struct.pt_sec_windows_status* %45 to i8*
  %47 = load i8**, i8*** %5, align 8
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds %struct._stat, %struct._stat* %9, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %6, align 8
  store i64 %49, i64* %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %40, %37, %30, %24, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @pt_sec_windows_fstat(i8*, %struct._stat*) #1

declare dso_local %struct.pt_sec_windows_status* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
