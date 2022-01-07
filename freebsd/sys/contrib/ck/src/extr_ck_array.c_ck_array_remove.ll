; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_array.c_ck_array_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_array.c_ck_array_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_array = type { i32, %struct._ck_array*, %struct._ck_array*, i32 }
%struct._ck_array = type { i8**, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_array_remove(%struct.ck_array* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ck_array*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._ck_array*, align 8
  %7 = alloca i32, align 4
  store %struct.ck_array* %0, %struct.ck_array** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %9 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %8, i32 0, i32 1
  %10 = load %struct._ck_array*, %struct._ck_array** %9, align 8
  %11 = icmp ne %struct._ck_array* %10, null
  br i1 %11, label %12, label %54

12:                                               ; preds = %2
  %13 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %14 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %13, i32 0, i32 1
  %15 = load %struct._ck_array*, %struct._ck_array** %14, align 8
  store %struct._ck_array* %15, %struct._ck_array** %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %50, %12
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %19 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %16
  %23 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %24 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %22
  %33 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %34 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %37 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add i32 %38, -1
  store i32 %39, i32* %37, align 8
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %35, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %44 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %43, i32 0, i32 0
  %45 = load i8**, i8*** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  store i8* %42, i8** %48, align 8
  store i32 1, i32* %3, align 4
  br label %169

49:                                               ; preds = %22
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %16

53:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %169

54:                                               ; preds = %2
  %55 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %56 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %55, i32 0, i32 2
  %57 = load %struct._ck_array*, %struct._ck_array** %56, align 8
  store %struct._ck_array* %57, %struct._ck_array** %6, align 8
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %76, %54
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %61 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %66 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %79

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %58

79:                                               ; preds = %74, %58
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %82 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %169

86:                                               ; preds = %79
  %87 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %88 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %91 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %89, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %86
  %95 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %96 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %102 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %101, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %105 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add i32 %106, -1
  store i32 %107, i32* %105, align 8
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %103, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @ck_pr_store_ptr(i8** %100, i8* %110)
  store i32 1, i32* %3, align 4
  br label %169

112:                                              ; preds = %86
  %113 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %114 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %117 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = zext i32 %118 to i64
  %120 = call %struct._ck_array* @ck_array_create(i32 %115, i64 %119)
  store %struct._ck_array* %120, %struct._ck_array** %6, align 8
  %121 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %122 = icmp eq %struct._ck_array* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  store i32 0, i32* %3, align 4
  br label %169

124:                                              ; preds = %112
  %125 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %126 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %129 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %128, i32 0, i32 2
  %130 = load %struct._ck_array*, %struct._ck_array** %129, align 8
  %131 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %134 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = zext i32 %135 to i64
  %137 = mul i64 8, %136
  %138 = trunc i64 %137 to i32
  %139 = call i32 @memcpy(i8** %127, i8** %132, i32 %138)
  %140 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %141 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %144 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 4
  %145 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %146 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %149 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 8
  %150 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %151 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %150, i32 0, i32 0
  %152 = load i8**, i8*** %151, align 8
  %153 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %154 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add i32 %155, -1
  store i32 %156, i32* %154, align 8
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %152, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %161 = getelementptr inbounds %struct._ck_array, %struct._ck_array* %160, i32 0, i32 0
  %162 = load i8**, i8*** %161, align 8
  %163 = load i32, i32* %7, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  store i8* %159, i8** %165, align 8
  %166 = load %struct._ck_array*, %struct._ck_array** %6, align 8
  %167 = load %struct.ck_array*, %struct.ck_array** %4, align 8
  %168 = getelementptr inbounds %struct.ck_array, %struct.ck_array* %167, i32 0, i32 1
  store %struct._ck_array* %166, %struct._ck_array** %168, align 8
  store i32 1, i32* %3, align 4
  br label %169

169:                                              ; preds = %124, %123, %94, %85, %53, %32
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @ck_pr_store_ptr(i8**, i8*) #1

declare dso_local %struct._ck_array* @ck_array_create(i32, i64) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
