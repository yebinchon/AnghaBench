; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_args.c_parse_block_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/xz/extr_args.c_parse_block_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"%s: Invalid argument to --block-list\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: Too many arguments to --block-list\00", align 1
@opt_block_list = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"block-list\00", align 1
@UINT64_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"0 can only be used as the last element in --block-list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_block_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_block_list(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 44
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %1
  %19 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 (i32, ...) @message_fatal(i32 %19, i8* %20)
  br label %22

22:                                               ; preds = %18, %12
  store i64 1, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i8*, i8** %2, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load i8*, i8** %2, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 44
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i64, i64* %3, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %4, align 8
  br label %23

44:                                               ; preds = %23
  %45 = load i64, i64* %3, align 8
  %46 = load i32, i32* @SIZE_MAX, align 4
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %47, 4
  %49 = sub i64 %48, 1
  %50 = icmp ugt i64 %45, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 (i32, ...) @message_fatal(i32 %52, i8* %53)
  br label %55

55:                                               ; preds = %51, %44
  %56 = load i64*, i64** @opt_block_list, align 8
  %57 = call i32 @free(i64* %56)
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  %60 = mul i64 %59, 4
  %61 = call i64* @xmalloc(i64 %60)
  store i64* %61, i64** @opt_block_list, align 8
  store i64 0, i64* %5, align 8
  br label %62

62:                                               ; preds = %121, %55
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %3, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %124

66:                                               ; preds = %62
  %67 = load i8*, i8** %2, align 8
  %68 = call i8* @strchr(i8* %67, i8 signext 44)
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i8*, i8** %6, align 8
  store i8 0, i8* %72, align 1
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i8*, i8** %2, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load i64, i64* %5, align 8
  %81 = icmp ugt i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i64*, i64** @opt_block_list, align 8
  %85 = load i64, i64* %5, align 8
  %86 = sub i64 %85, 1
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** @opt_block_list, align 8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 %88, i64* %91, align 8
  br label %118

92:                                               ; preds = %73
  %93 = load i8*, i8** %2, align 8
  %94 = load i64, i64* @UINT64_MAX, align 8
  %95 = call i64 @str_to_uint64(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %93, i32 0, i64 %94)
  %96 = load i64*, i64** @opt_block_list, align 8
  %97 = load i64, i64* %5, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %95, i64* %98, align 8
  %99 = load i64*, i64** @opt_block_list, align 8
  %100 = load i64, i64* %5, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %92
  %105 = load i64, i64* %5, align 8
  %106 = add i64 %105, 1
  %107 = load i64, i64* %3, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %111 = call i32 (i32, ...) @message_fatal(i32 %110)
  br label %112

112:                                              ; preds = %109, %104
  %113 = load i64, i64* @UINT64_MAX, align 8
  %114 = load i64*, i64** @opt_block_list, align 8
  %115 = load i64, i64* %5, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  store i64 %113, i64* %116, align 8
  br label %117

117:                                              ; preds = %112, %92
  br label %118

118:                                              ; preds = %117, %79
  %119 = load i8*, i8** %6, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 1
  store i8* %120, i8** %2, align 8
  br label %121

121:                                              ; preds = %118
  %122 = load i64, i64* %5, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %5, align 8
  br label %62

124:                                              ; preds = %62
  %125 = load i64*, i64** @opt_block_list, align 8
  %126 = load i64, i64* %3, align 8
  %127 = getelementptr inbounds i64, i64* %125, i64 %126
  store i64 0, i64* %127, align 8
  ret void
}

declare dso_local i32 @message_fatal(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i64* @xmalloc(i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @str_to_uint64(i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
