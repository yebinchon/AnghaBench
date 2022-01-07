; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/posix/extr_pt_section_posix.c_pt_section_mk_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/posix/extr_pt_section_posix.c_pt_section_mk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_sec_posix_status = type { %struct.stat }
%struct.stat = type { i64 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_file = common dso_local global i32 0, align 4
@pte_bad_image = common dso_local global i32 0, align 4
@pte_nomem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_section_mk_status(i8** %0, i64* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pt_sec_posix_status*, align 8
  %9 = alloca %struct.stat, align 8
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
  br label %52

19:                                               ; preds = %13
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @stat(i8* %20, %struct.stat* %9)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @pte_bad_file, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @pte_bad_image, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %52

34:                                               ; preds = %27
  %35 = call %struct.pt_sec_posix_status* @malloc(i32 8)
  store %struct.pt_sec_posix_status* %35, %struct.pt_sec_posix_status** %8, align 8
  %36 = load %struct.pt_sec_posix_status*, %struct.pt_sec_posix_status** %8, align 8
  %37 = icmp ne %struct.pt_sec_posix_status* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @pte_nomem, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %52

41:                                               ; preds = %34
  %42 = load %struct.pt_sec_posix_status*, %struct.pt_sec_posix_status** %8, align 8
  %43 = getelementptr inbounds %struct.pt_sec_posix_status, %struct.pt_sec_posix_status* %42, i32 0, i32 0
  %44 = bitcast %struct.stat* %43 to i8*
  %45 = bitcast %struct.stat* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 8, i1 false)
  %46 = load %struct.pt_sec_posix_status*, %struct.pt_sec_posix_status** %8, align 8
  %47 = bitcast %struct.pt_sec_posix_status* %46 to i8*
  %48 = load i8**, i8*** %5, align 8
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %6, align 8
  store i64 %50, i64* %51, align 8
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %41, %38, %31, %24, %16
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local %struct.pt_sec_posix_status* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
