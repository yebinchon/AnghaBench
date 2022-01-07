; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_next_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_next_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**, i8**, i8*)* @next_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_field(i8** %0, i8** %1, i8** %2, i8* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8* %3, i8** %8, align 8
  br label %9

9:                                                ; preds = %29, %4
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 32
  br i1 %14, label %27, label %15

15:                                               ; preds = %9
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 10
  br label %27

27:                                               ; preds = %21, %15, %9
  %28 = phi i1 [ true, %15 ], [ true, %9 ], [ %26, %21 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %30, align 8
  br label %9

33:                                               ; preds = %27
  %34 = load i8**, i8*** %5, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** %6, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %69, %33
  %38 = load i8**, i8*** %5, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 44
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 58
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 10
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 35
  br label %67

67:                                               ; preds = %61, %55, %49, %43, %37
  %68 = phi i1 [ false, %55 ], [ false, %49 ], [ false, %43 ], [ false, %37 ], [ %66, %61 ]
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  %70 = load i8**, i8*** %5, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %70, align 8
  br label %37

73:                                               ; preds = %67
  %74 = load i8**, i8*** %5, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %8, align 8
  store i8 %76, i8* %77, align 1
  %78 = load i8**, i8*** %5, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = load i8**, i8*** %6, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = icmp eq i8* %79, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %73
  %84 = load i8**, i8*** %5, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = load i8**, i8*** %7, align 8
  store i8* %85, i8** %86, align 8
  br label %120

87:                                               ; preds = %73
  %88 = load i8**, i8*** %5, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 -1
  %91 = load i8**, i8*** %7, align 8
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %112, %87
  %93 = load i8**, i8*** %7, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 32
  br i1 %97, label %110, label %98

98:                                               ; preds = %92
  %99 = load i8**, i8*** %7, align 8
  %100 = load i8*, i8** %99, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 9
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load i8**, i8*** %7, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 10
  br label %110

110:                                              ; preds = %104, %98, %92
  %111 = phi i1 [ true, %98 ], [ true, %92 ], [ %109, %104 ]
  br i1 %111, label %112, label %116

112:                                              ; preds = %110
  %113 = load i8**, i8*** %7, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 -1
  store i8* %115, i8** %113, align 8
  br label %92

116:                                              ; preds = %110
  %117 = load i8**, i8*** %7, align 8
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %117, align 8
  br label %120

120:                                              ; preds = %116, %83
  %121 = load i8*, i8** %8, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 35
  br i1 %124, label %125, label %155

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %146, %125
  %127 = load i8**, i8*** %5, align 8
  %128 = load i8*, i8** %127, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %126
  %133 = load i8**, i8*** %5, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 44
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i8**, i8*** %5, align 8
  %140 = load i8*, i8** %139, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 10
  br label %144

144:                                              ; preds = %138, %132, %126
  %145 = phi i1 [ false, %132 ], [ false, %126 ], [ %143, %138 ]
  br i1 %145, label %146, label %150

146:                                              ; preds = %144
  %147 = load i8**, i8*** %5, align 8
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %147, align 8
  br label %126

150:                                              ; preds = %144
  %151 = load i8**, i8*** %5, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = load i8, i8* %152, align 1
  %154 = load i8*, i8** %8, align 8
  store i8 %153, i8* %154, align 1
  br label %155

155:                                              ; preds = %150, %120
  %156 = load i8**, i8*** %5, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i8**, i8*** %5, align 8
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %162, align 8
  br label %165

165:                                              ; preds = %161, %155
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
