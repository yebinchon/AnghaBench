; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.err.c_cleanup_until.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.err.c_cleanup_until.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup_entry = type { i8*, i32 (i8*)* }

@cleanup_sp = common dso_local global i64 0, align 8
@cleanup_stack = common dso_local global %struct.cleanup_entry* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup_until(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cleanup_entry, align 8
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i64, i64* @cleanup_sp, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %4
  %8 = load i64, i64* @cleanup_sp, align 8
  %9 = add i64 %8, -1
  store i64 %9, i64* @cleanup_sp, align 8
  %10 = load %struct.cleanup_entry*, %struct.cleanup_entry** @cleanup_stack, align 8
  %11 = load i64, i64* @cleanup_sp, align 8
  %12 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %10, i64 %11
  %13 = bitcast %struct.cleanup_entry* %3 to i8*
  %14 = bitcast %struct.cleanup_entry* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %3, i32 0, i32 1
  %16 = load i32 (i8*)*, i32 (i8*)** %15, align 8
  %17 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %3, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 %16(i8* %18)
  %20 = getelementptr inbounds %struct.cleanup_entry, %struct.cleanup_entry* %3, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = icmp eq i8* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  ret void

25:                                               ; preds = %7
  br label %4

26:                                               ; preds = %4
  %27 = call i32 (...) @abort() #3
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
