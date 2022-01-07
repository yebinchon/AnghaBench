; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_cert__match_dns_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_cert__match_dns_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_cert__match_dns_identity(%struct.TYPE_4__* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sge i32 %12, 2
  br i1 %13, label %14, label %63

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 42
  br i1 %22, label %23, label %63

23:                                               ; preds = %14
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 1
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 46
  br i1 %32, label %33, label %63

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 46
  br label %50

50:                                               ; preds = %41, %34
  %51 = phi i1 [ false, %34 ], [ %49, %41 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %34

55:                                               ; preds = %50
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %3, align 4
  br label %155

60:                                               ; preds = %55
  %61 = load i64, i64* %6, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %6, align 8
  br label %63

63:                                               ; preds = %60, %23, %14, %2
  br label %64

64:                                               ; preds = %109, %63
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = icmp ult i64 %65, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = icmp ult i64 %72, %76
  br label %78

78:                                               ; preds = %71, %64
  %79 = phi i1 [ false, %64 ], [ %77, %71 ]
  br i1 %79, label %80, label %110

80:                                               ; preds = %78
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %8, align 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  %92 = load i8, i8* %91, align 1
  store i8 %92, i8* %9, align 1
  %93 = load i8, i8* %8, align 1
  %94 = call signext i8 @canonicalize_to_lower(i8 signext %93)
  store i8 %94, i8* %8, align 1
  %95 = load i8, i8* %9, align 1
  %96 = call signext i8 @canonicalize_to_lower(i8 signext %95)
  store i8 %96, i8* %9, align 1
  %97 = load i8, i8* %8, align 1
  %98 = sext i8 %97 to i32
  %99 = load i8, i8* %9, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %80
  %103 = load i32, i32* @FALSE, align 4
  store i32 %103, i32* %3, align 4
  br label %155

104:                                              ; preds = %80
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %6, align 8
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %7, align 8
  br label %109

109:                                              ; preds = %104
  br label %64

110:                                              ; preds = %78
  %111 = load i64, i64* %6, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = icmp eq i64 %111, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %110
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = icmp eq i64 %118, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %117
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 46
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = load i64, i64* %7, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %7, align 8
  br label %137

137:                                              ; preds = %134, %125, %117, %110
  %138 = load i64, i64* %6, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = icmp ne i64 %138, %142
  br i1 %143, label %151, label %144

144:                                              ; preds = %137
  %145 = load i64, i64* %7, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = icmp ne i64 %145, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %144, %137
  %152 = load i32, i32* @FALSE, align 4
  store i32 %152, i32* %3, align 4
  br label %155

153:                                              ; preds = %144
  %154 = load i32, i32* @TRUE, align 4
  store i32 %154, i32* %3, align 4
  br label %155

155:                                              ; preds = %153, %151, %102, %58
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local signext i8 @canonicalize_to_lower(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
