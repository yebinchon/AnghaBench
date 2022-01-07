; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_mlink_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_mlink_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i8*, i8*, i8*, i8*, %struct.mpage*, %struct.mpage*, %struct.mpage*, i8*, %struct.TYPE_2__, i32*, i8* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlink = type { i8*, i8*, i8*, i8*, %struct.mlink*, %struct.mlink*, %struct.mlink*, i8*, %struct.TYPE_2__, i32*, i8* }
%struct.stat = type { i32, i32 }
%struct.inodev = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FORM_CAT = common dso_local global i8* null, align 8
@FORM_SRC = common dso_local global i8* null, align 8
@FORM_NONE = common dso_local global i8* null, align 8
@mlinks = common dso_local global i32 0, align 4
@mpages = common dso_local global i32 0, align 4
@mpage_head = common dso_local global %struct.mpage* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlink*, %struct.stat*)* @mlink_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlink_add(%struct.mlink* %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.mlink*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca %struct.inodev, align 4
  %6 = alloca %struct.mpage*, align 8
  %7 = alloca i32, align 4
  store %struct.mlink* %0, %struct.mlink** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %8 = load %struct.mlink*, %struct.mlink** %3, align 8
  %9 = getelementptr inbounds %struct.mlink, %struct.mlink* %8, i32 0, i32 9
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* null, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.mlink*, %struct.mlink** %3, align 8
  %15 = getelementptr inbounds %struct.mlink, %struct.mlink* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.mlink*, %struct.mlink** %3, align 8
  %20 = getelementptr inbounds %struct.mlink, %struct.mlink* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i8* [ %21, %18 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %22 ]
  %25 = call i8* @mandoc_strdup(i8* %24)
  %26 = load %struct.mlink*, %struct.mlink** %3, align 8
  %27 = getelementptr inbounds %struct.mlink, %struct.mlink* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.mlink*, %struct.mlink** %3, align 8
  %29 = getelementptr inbounds %struct.mlink, %struct.mlink* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %23
  %33 = load %struct.mlink*, %struct.mlink** %3, align 8
  %34 = getelementptr inbounds %struct.mlink, %struct.mlink* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  br label %37

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %32
  %38 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %36 ]
  %39 = call i8* @mandoc_strdup(i8* %38)
  %40 = load %struct.mlink*, %struct.mlink** %3, align 8
  %41 = getelementptr inbounds %struct.mlink, %struct.mlink* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load %struct.mlink*, %struct.mlink** %3, align 8
  %43 = getelementptr inbounds %struct.mlink, %struct.mlink* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load %struct.mlink*, %struct.mlink** %3, align 8
  %48 = getelementptr inbounds %struct.mlink, %struct.mlink* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  br label %51

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i8* [ %49, %46 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %50 ]
  %53 = call i8* @mandoc_strdup(i8* %52)
  %54 = load %struct.mlink*, %struct.mlink** %3, align 8
  %55 = getelementptr inbounds %struct.mlink, %struct.mlink* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.mlink*, %struct.mlink** %3, align 8
  %57 = getelementptr inbounds %struct.mlink, %struct.mlink* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load %struct.mlink*, %struct.mlink** %3, align 8
  %62 = getelementptr inbounds %struct.mlink, %struct.mlink* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  br label %65

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i8* [ %63, %60 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %64 ]
  %67 = call i8* @mandoc_strdup(i8* %66)
  %68 = load %struct.mlink*, %struct.mlink** %3, align 8
  %69 = getelementptr inbounds %struct.mlink, %struct.mlink* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.mlink*, %struct.mlink** %3, align 8
  %71 = getelementptr inbounds %struct.mlink, %struct.mlink* %70, i32 0, i32 3
  %72 = load i8*, i8** %71, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 48, %74
  br i1 %75, label %76, label %90

76:                                               ; preds = %65
  %77 = load %struct.mlink*, %struct.mlink** %3, align 8
  %78 = getelementptr inbounds %struct.mlink, %struct.mlink* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load %struct.mlink*, %struct.mlink** %3, align 8
  %82 = getelementptr inbounds %struct.mlink, %struct.mlink* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i8* @mandoc_strdup(i8* %83)
  %85 = load %struct.mlink*, %struct.mlink** %3, align 8
  %86 = getelementptr inbounds %struct.mlink, %struct.mlink* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @FORM_CAT, align 8
  %88 = load %struct.mlink*, %struct.mlink** %3, align 8
  %89 = getelementptr inbounds %struct.mlink, %struct.mlink* %88, i32 0, i32 10
  store i8* %87, i8** %89, align 8
  br label %113

90:                                               ; preds = %65
  %91 = load %struct.mlink*, %struct.mlink** %3, align 8
  %92 = getelementptr inbounds %struct.mlink, %struct.mlink* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp sle i32 49, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %90
  %98 = load %struct.mlink*, %struct.mlink** %3, align 8
  %99 = getelementptr inbounds %struct.mlink, %struct.mlink* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp sge i32 57, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i8*, i8** @FORM_SRC, align 8
  %106 = load %struct.mlink*, %struct.mlink** %3, align 8
  %107 = getelementptr inbounds %struct.mlink, %struct.mlink* %106, i32 0, i32 10
  store i8* %105, i8** %107, align 8
  br label %112

108:                                              ; preds = %97, %90
  %109 = load i8*, i8** @FORM_NONE, align 8
  %110 = load %struct.mlink*, %struct.mlink** %3, align 8
  %111 = getelementptr inbounds %struct.mlink, %struct.mlink* %110, i32 0, i32 10
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %108, %104
  br label %113

113:                                              ; preds = %112, %76
  %114 = load %struct.mlink*, %struct.mlink** %3, align 8
  %115 = getelementptr inbounds %struct.mlink, %struct.mlink* %114, i32 0, i32 9
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @ohash_qlookup(i32* @mlinks, i32* %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call %struct.mpage* @ohash_find(i32* @mlinks, i32 %118)
  %120 = icmp eq %struct.mpage* null, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.mlink*, %struct.mlink** %3, align 8
  %125 = bitcast %struct.mlink* %124 to %struct.mpage*
  %126 = call i32 @ohash_insert(i32* @mlinks, i32 %123, %struct.mpage* %125)
  %127 = call i32 @memset(%struct.inodev* %5, i32 0, i32 8)
  %128 = load %struct.stat*, %struct.stat** %4, align 8
  %129 = getelementptr inbounds %struct.stat, %struct.stat* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.inodev, %struct.inodev* %5, i32 0, i32 1
  store i32 %130, i32* %131, align 4
  %132 = load %struct.stat*, %struct.stat** %4, align 8
  %133 = getelementptr inbounds %struct.stat, %struct.stat* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.inodev, %struct.inodev* %5, i32 0, i32 0
  store i32 %134, i32* %135, align 4
  %136 = bitcast %struct.inodev* %5 to i8*
  %137 = getelementptr inbounds %struct.inodev, %struct.inodev* %5, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ohash_lookup_memory(i32* @mpages, i8* %136, i32 8, i32 %138)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call %struct.mpage* @ohash_find(i32* @mpages, i32 %140)
  store %struct.mpage* %141, %struct.mpage** %6, align 8
  %142 = load %struct.mpage*, %struct.mpage** %6, align 8
  %143 = icmp eq %struct.mpage* null, %142
  br i1 %143, label %144, label %166

144:                                              ; preds = %113
  %145 = call %struct.mpage* @mandoc_calloc(i32 1, i32 88)
  store %struct.mpage* %145, %struct.mpage** %6, align 8
  %146 = getelementptr inbounds %struct.inodev, %struct.inodev* %5, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.mpage*, %struct.mpage** %6, align 8
  %149 = getelementptr inbounds %struct.mpage, %struct.mpage* %148, i32 0, i32 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = getelementptr inbounds %struct.inodev, %struct.inodev* %5, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.mpage*, %struct.mpage** %6, align 8
  %154 = getelementptr inbounds %struct.mpage, %struct.mpage* %153, i32 0, i32 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  store i32 %152, i32* %155, align 8
  %156 = load i8*, i8** @FORM_NONE, align 8
  %157 = load %struct.mpage*, %struct.mpage** %6, align 8
  %158 = getelementptr inbounds %struct.mpage, %struct.mpage* %157, i32 0, i32 7
  store i8* %156, i8** %158, align 8
  %159 = load %struct.mpage*, %struct.mpage** @mpage_head, align 8
  %160 = load %struct.mpage*, %struct.mpage** %6, align 8
  %161 = getelementptr inbounds %struct.mpage, %struct.mpage* %160, i32 0, i32 6
  store %struct.mpage* %159, %struct.mpage** %161, align 8
  %162 = load %struct.mpage*, %struct.mpage** %6, align 8
  store %struct.mpage* %162, %struct.mpage** @mpage_head, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.mpage*, %struct.mpage** %6, align 8
  %165 = call i32 @ohash_insert(i32* @mpages, i32 %163, %struct.mpage* %164)
  br label %173

166:                                              ; preds = %113
  %167 = load %struct.mpage*, %struct.mpage** %6, align 8
  %168 = getelementptr inbounds %struct.mpage, %struct.mpage* %167, i32 0, i32 5
  %169 = load %struct.mpage*, %struct.mpage** %168, align 8
  %170 = bitcast %struct.mpage* %169 to %struct.mlink*
  %171 = load %struct.mlink*, %struct.mlink** %3, align 8
  %172 = getelementptr inbounds %struct.mlink, %struct.mlink* %171, i32 0, i32 6
  store %struct.mlink* %170, %struct.mlink** %172, align 8
  br label %173

173:                                              ; preds = %166, %144
  %174 = load %struct.mlink*, %struct.mlink** %3, align 8
  %175 = bitcast %struct.mlink* %174 to %struct.mpage*
  %176 = load %struct.mpage*, %struct.mpage** %6, align 8
  %177 = getelementptr inbounds %struct.mpage, %struct.mpage* %176, i32 0, i32 5
  store %struct.mpage* %175, %struct.mpage** %177, align 8
  %178 = load %struct.mpage*, %struct.mpage** %6, align 8
  %179 = bitcast %struct.mpage* %178 to %struct.mlink*
  %180 = load %struct.mlink*, %struct.mlink** %3, align 8
  %181 = getelementptr inbounds %struct.mlink, %struct.mlink* %180, i32 0, i32 4
  store %struct.mlink* %179, %struct.mlink** %181, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @mandoc_strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ohash_qlookup(i32*, i32*) #1

declare dso_local %struct.mpage* @ohash_find(i32*, i32) #1

declare dso_local i32 @ohash_insert(i32*, i32, %struct.mpage*) #1

declare dso_local i32 @memset(%struct.inodev*, i32, i32) #1

declare dso_local i32 @ohash_lookup_memory(i32*, i8*, i32, i32) #1

declare dso_local %struct.mpage* @mandoc_calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
