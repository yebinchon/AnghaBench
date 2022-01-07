; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_strtoaddr.c_strtoaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_strtoaddr.c_strtoaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NS_INADDRSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @strtoaddr(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32* %12, i32** %11, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %9, align 1
  br label %15

15:                                               ; preds = %87, %2
  %16 = load i8, i8* %9, align 1
  %17 = call i64 @isdigit(i8 zeroext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %145

20:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  %21 = load i8, i8* %9, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 48
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %9, align 1
  %28 = load i8, i8* %9, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 120
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 88
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %24
  store i32 0, i32* %3, align 4
  br label %145

36:                                               ; preds = %31
  %37 = load i8, i8* %9, align 1
  %38 = call i64 @isdigit(i8 zeroext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i8, i8* %9, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 57
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %145

45:                                               ; preds = %40, %36
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46, %20
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i8, i8* %9, align 1
  %50 = call i64 @isdigit(i8 zeroext %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i8, i8* %9, align 1
  %54 = zext i8 %53 to i32
  %55 = sub nsw i32 %54, 48
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sge i32 %56, 10
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %69

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 %60, 10
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %6, align 4
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  %66 = load i8, i8* %65, align 1
  store i8 %66, i8* %9, align 1
  br label %68

67:                                               ; preds = %48
  br label %69

68:                                               ; preds = %59
  br label %48

69:                                               ; preds = %67, %58
  %70 = load i8, i8* %9, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 46
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = icmp uge i32* %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %145

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %11, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %4, align 8
  %85 = load i8, i8* %84, align 1
  store i8 %85, i8* %9, align 1
  br label %87

86:                                               ; preds = %69
  br label %88

87:                                               ; preds = %79
  br label %15

88:                                               ; preds = %86
  %89 = load i8, i8* %9, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i8, i8* %9, align 1
  %94 = call i32 @isspace(i8 zeroext %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  store i32 0, i32* %3, align 4
  br label %145

97:                                               ; preds = %92, %88
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %100 = ptrtoint i32* %98 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  %104 = add nsw i64 %103, 1
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 4
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %145

109:                                              ; preds = %97
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %111 = load i32, i32* %110, align 16
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %111, %113
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %114, %116
  %118 = load i32, i32* %6, align 4
  %119 = or i32 %117, %118
  %120 = icmp sgt i32 %119, 255
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %145

122:                                              ; preds = %109
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %124 = load i32, i32* %123, align 16
  %125 = shl i32 %124, 24
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 16
  %129 = or i32 %125, %128
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %131 = load i32, i32* %130, align 8
  %132 = shl i32 %131, 8
  %133 = or i32 %129, %132
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %6, align 4
  %136 = load i8*, i8** %5, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %122
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @htonl(i32 %139)
  store i32 %140, i32* %6, align 4
  %141 = load i8*, i8** %5, align 8
  %142 = load i32, i32* @NS_INADDRSZ, align 4
  %143 = call i32 @memcpy(i8* %141, i32* %6, i32 %142)
  br label %144

144:                                              ; preds = %138, %122
  store i32 1, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %121, %108, %96, %78, %44, %35, %19
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @isspace(i8 zeroext) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
