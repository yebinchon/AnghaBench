; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_trgt_i386.c_kgdb_trgt_trapframe_prev_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_trgt_i386.c_kgdb_trgt_trapframe_prev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.kgdb_frame_cache = type { i32, i64 }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@not_lval = common dso_local global i32 0, align 4
@I386_EAX_REGNUM = common dso_local global i32 0, align 4
@I386_FS_REGNUM = common dso_local global i32 0, align 4
@kgdb_trgt_frame_offset = common dso_local global i32* null, align 8
@ofs_fix = common dso_local global i32 0, align 4
@gdb_stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Correct FT_XXX frame offsets for %d\0A\00", align 1
@lval_memory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame_info*, i8**, i32, i32*, i32*, i64*, i32*, i8*)* @kgdb_trgt_trapframe_prev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kgdb_trgt_trapframe_prev_register(%struct.frame_info* %0, i8** %1, i32 %2, i32* %3, i32* %4, i64* %5, i32* %6, i8* %7) #0 {
  %9 = alloca %struct.frame_info*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.kgdb_frame_cache*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* %7, i8** %16, align 8
  %23 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i32, i32* @current_gdbarch, align 4
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @register_size(i32 %27, i32 %28)
  store i32 %29, i32* %21, align 4
  %30 = load i8*, i8** %16, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %8
  store i8* %26, i8** %16, align 8
  br label %33

33:                                               ; preds = %32, %8
  %34 = load i8*, i8** %16, align 8
  %35 = load i32, i32* %21, align 4
  %36 = call i32 @memset(i8* %34, i32 0, i32 %35)
  %37 = load i32*, i32** %12, align 8
  store i32 0, i32* %37, align 4
  %38 = load i64*, i64** %14, align 8
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @not_lval, align 4
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %15, align 8
  store i32 -1, i32* %41, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @I386_EAX_REGNUM, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %33
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @I386_FS_REGNUM, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32*, i32** @kgdb_trgt_frame_offset, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ofs_fix, align 4
  %56 = add nsw i32 %54, %55
  br label %58

57:                                               ; preds = %45, %33
  br label %58

58:                                               ; preds = %57, %49
  %59 = phi i32 [ %56, %49 ], [ -1, %57 ]
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %20, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 1, i32* %22, align 4
  br label %100

63:                                               ; preds = %58
  %64 = load %struct.frame_info*, %struct.frame_info** %9, align 8
  %65 = load i8**, i8*** %10, align 8
  %66 = call %struct.kgdb_frame_cache* @kgdb_trgt_frame_cache(%struct.frame_info* %64, i8** %65)
  store %struct.kgdb_frame_cache* %66, %struct.kgdb_frame_cache** %19, align 8
  %67 = load %struct.kgdb_frame_cache*, %struct.kgdb_frame_cache** %19, align 8
  %68 = getelementptr inbounds %struct.kgdb_frame_cache, %struct.kgdb_frame_cache* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %79 [
    i32 129, label %70
    i32 131, label %71
    i32 128, label %74
    i32 130, label %75
  ]

70:                                               ; preds = %63
  br label %85

71:                                               ; preds = %63
  %72 = load i32, i32* %20, align 4
  %73 = add nsw i32 %72, 4
  store i32 %73, i32* %20, align 4
  br label %85

74:                                               ; preds = %63
  br label %85

75:                                               ; preds = %63
  %76 = load i32, i32* @ofs_fix, align 4
  %77 = load i32, i32* %20, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %20, align 4
  br label %85

79:                                               ; preds = %63
  %80 = load i32, i32* @gdb_stderr, align 4
  %81 = load %struct.kgdb_frame_cache*, %struct.kgdb_frame_cache** %19, align 8
  %82 = getelementptr inbounds %struct.kgdb_frame_cache, %struct.kgdb_frame_cache* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @fprintf_unfiltered(i32 %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %75, %74, %71, %70
  %86 = load %struct.kgdb_frame_cache*, %struct.kgdb_frame_cache** %19, align 8
  %87 = getelementptr inbounds %struct.kgdb_frame_cache, %struct.kgdb_frame_cache* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = load i64*, i64** %14, align 8
  store i64 %91, i64* %92, align 8
  %93 = load i32, i32* @lval_memory, align 4
  %94 = load i32*, i32** %13, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i64*, i64** %14, align 8
  %96 = load i64, i64* %95, align 8
  %97 = load i8*, i8** %16, align 8
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @target_read_memory(i64 %96, i8* %97, i32 %98)
  store i32 0, i32* %22, align 4
  br label %100

100:                                              ; preds = %85, %62
  %101 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %22, align 4
  switch i32 %102, label %104 [
    i32 0, label %103
    i32 1, label %103
  ]

103:                                              ; preds = %100, %100
  ret void

104:                                              ; preds = %100
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @register_size(i32, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local %struct.kgdb_frame_cache* @kgdb_trgt_frame_cache(%struct.frame_info*, i8**) #2

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i32) #2

declare dso_local i32 @target_read_memory(i64, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
