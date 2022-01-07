; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_smbutil.c_smb_print_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_smbutil.c_smb_print_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"[%03X] \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"WARNING: Short packet. Try increasing the snap length\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_print_data(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %146

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i32*
  %17 = call i32 @ND_PRINT(i32* %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %81, %12
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %82

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = call i32 @ND_TCHECK(i8 zeroext %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %35, 255
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i32*
  %39 = call i32 @ND_PRINT(i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = srem i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %22
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  br label %48

48:                                               ; preds = %45, %22
  %49 = load i32, i32* %7, align 4
  %50 = srem i32 %49, 16
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = load i32*, i32** %4, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 16
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = call i32 @print_asc(i32* %53, i8* %58, i32 8)
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  %62 = load i32*, i32** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %64, 8
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = call i32 @print_asc(i32* %62, i8* %67, i32 8)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.3 to i32*))
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %52
  %75 = load i32*, i32** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i32*
  %79 = call i32 @ND_PRINT(i32* %78)
  br label %80

80:                                               ; preds = %74, %52
  br label %81

81:                                               ; preds = %80, %48
  br label %18

82:                                               ; preds = %18
  %83 = load i32, i32* %7, align 4
  %84 = srem i32 %83, 16
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %140

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  %88 = srem i32 %87, 16
  %89 = sub nsw i32 16, %88
  store i32 %89, i32* %8, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  %92 = load i32, i32* %8, align 4
  %93 = icmp sgt i32 %92, 8
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  br label %97

97:                                               ; preds = %94, %86
  br label %98

98:                                               ; preds = %102, %97
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %8, align 4
  %101 = icmp ne i32 %99, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32*, i32** %4, align 8
  %104 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.4 to i32*))
  br label %98

105:                                              ; preds = %98
  %106 = load i32, i32* %7, align 4
  %107 = srem i32 %106, 16
  %108 = call i32 @min(i32 8, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = srem i32 %112, 16
  %114 = sub nsw i32 %111, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %110, i64 %115
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @print_asc(i32* %109, i8* %116, i32 %117)
  %119 = load i32*, i32** %4, align 8
  %120 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.2 to i32*))
  %121 = load i32, i32* %7, align 4
  %122 = srem i32 %121, 16
  %123 = load i32, i32* %8, align 4
  %124 = sub nsw i32 %122, %123
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %105
  %128 = load i32*, i32** %4, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %8, align 4
  %132 = sub nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %129, i64 %133
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @print_asc(i32* %128, i8* %134, i32 %135)
  br label %137

137:                                              ; preds = %127, %105
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.3 to i32*))
  br label %140

140:                                              ; preds = %137, %82
  br label %146

141:                                              ; No predecessors!
  %142 = load i32*, i32** %4, align 8
  %143 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.3 to i32*))
  %144 = load i32*, i32** %4, align 8
  %145 = call i32 @ND_PRINT(i32* bitcast ([55 x i8]* @.str.5 to i32*))
  br label %146

146:                                              ; preds = %141, %140, %11
  ret void
}

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK(i8 zeroext) #1

declare dso_local i32 @print_asc(i32*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
