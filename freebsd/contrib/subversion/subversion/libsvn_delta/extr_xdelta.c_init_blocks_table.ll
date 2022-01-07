; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_xdelta.c_init_blocks_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_xdelta.c_init_blocks_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blocks = type { i32, i8*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@MATCH_BLOCKSIZE = common dso_local global i32 0, align 4
@NO_POSITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.blocks*, i32*)* @init_blocks_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_blocks_table(i8* %0, i32 %1, %struct.blocks* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.blocks*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.blocks* %2, %struct.blocks** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 1, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %15 = sdiv i32 %13, %14
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %21, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sle i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %10, align 4
  %23 = mul nsw i32 %22, 2
  store i32 %23, i32* %10, align 4
  br label %17

24:                                               ; preds = %17
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %25, 2
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @SVN_ERR_ASSERT_NO_RETURN(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load %struct.blocks*, %struct.blocks** %7, align 8
  %36 = getelementptr inbounds %struct.blocks, %struct.blocks* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.blocks*, %struct.blocks** %7, align 8
  %39 = getelementptr inbounds %struct.blocks, %struct.blocks* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 16
  %44 = trunc i64 %43 to i32
  %45 = call %struct.TYPE_2__* @apr_palloc(i32* %40, i32 %44)
  %46 = load %struct.blocks*, %struct.blocks** %7, align 8
  %47 = getelementptr inbounds %struct.blocks, %struct.blocks* %46, i32 0, i32 3
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %47, align 8
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %68, %24
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load %struct.blocks*, %struct.blocks** %7, align 8
  %54 = getelementptr inbounds %struct.blocks, %struct.blocks* %53, i32 0, i32 3
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @NO_POSITION, align 4
  %61 = load %struct.blocks*, %struct.blocks** %7, align 8
  %62 = getelementptr inbounds %struct.blocks, %struct.blocks* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %60, i32* %67, align 8
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %48

71:                                               ; preds = %48
  %72 = load %struct.blocks*, %struct.blocks** %7, align 8
  %73 = getelementptr inbounds %struct.blocks, %struct.blocks* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memset(i32 %74, i32 0, i32 4)
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %91, %71
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load %struct.blocks*, %struct.blocks** %7, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = call i32 @init_adler32(i8* %87)
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @add_block(%struct.blocks* %83, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %82
  %92 = load i32, i32* @MATCH_BLOCKSIZE, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %12, align 4
  br label %76

95:                                               ; preds = %76
  ret void
}

declare dso_local i32 @SVN_ERR_ASSERT_NO_RETURN(i32) #1

declare dso_local %struct.TYPE_2__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @add_block(%struct.blocks*, i32, i32) #1

declare dso_local i32 @init_adler32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
