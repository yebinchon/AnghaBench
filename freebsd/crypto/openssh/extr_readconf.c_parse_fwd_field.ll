; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_parse_fwd_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_readconf.c_parse_fwd_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwdarg = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, %struct.fwdarg*)* @parse_fwd_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fwd_field(i8** %0, %struct.fwdarg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.fwdarg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store %struct.fwdarg* %1, %struct.fwdarg** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i8**, i8*** %4, align 8
  store i8* null, i8** %16, align 8
  store i32 -1, i32* %3, align 4
  br label %132

17:                                               ; preds = %2
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 91
  br i1 %21, label %22, label %86

22:                                               ; preds = %17
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %44, %22
  %26 = load i8*, i8** %6, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 93
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %47

37:                                               ; preds = %35
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 47
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %37
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  br label %25

47:                                               ; preds = %35
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 93
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 58
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %47
  store i32 -1, i32* %3, align 4
  br label %132

66:                                               ; preds = %59, %53
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  store i8 0, i8* %67, align 1
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  store i8 0, i8* %74, align 1
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load %struct.fwdarg*, %struct.fwdarg** %5, align 8
  %80 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.fwdarg*, %struct.fwdarg** %5, align 8
  %83 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = load i8**, i8*** %4, align 8
  store i8* %84, i8** %85, align 8
  store i32 0, i32* %3, align 4
  br label %132

86:                                               ; preds = %17
  %87 = load i8**, i8*** %4, align 8
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %7, align 8
  br label %89

89:                                               ; preds = %118, %86
  %90 = load i8*, i8** %7, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %89
  %95 = load i8*, i8** %7, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  switch i32 %97, label %117 [
    i32 92, label %98
    i32 47, label %113
    i32 58, label %114
  ]

98:                                               ; preds = %94
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = call i32 @strlen(i8* %103)
  %105 = add nsw i32 %104, 1
  %106 = call i32 @memmove(i8* %99, i8* %101, i32 %105)
  %107 = load i8*, i8** %7, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  store i32 -1, i32* %3, align 4
  br label %132

112:                                              ; preds = %98
  br label %117

113:                                              ; preds = %94
  store i32 1, i32* %8, align 4
  br label %117

114:                                              ; preds = %94
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %7, align 8
  store i8 0, i8* %115, align 1
  br label %122

117:                                              ; preds = %94, %113, %112
  br label %118

118:                                              ; preds = %117
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %7, align 8
  br label %89

121:                                              ; preds = %89
  br label %122

122:                                              ; preds = %121, %114
  %123 = load i8**, i8*** %4, align 8
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.fwdarg*, %struct.fwdarg** %5, align 8
  %126 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load i32, i32* %8, align 4
  %128 = load %struct.fwdarg*, %struct.fwdarg** %5, align 8
  %129 = getelementptr inbounds %struct.fwdarg, %struct.fwdarg* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load i8**, i8*** %4, align 8
  store i8* %130, i8** %131, align 8
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %122, %111, %76, %65, %15
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
