; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_parse_escapes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_parse_escapes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_entry = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mtree_entry*)* @parse_escapes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_escapes(i8* %0, %struct.mtree_entry* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mtree_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store %struct.mtree_entry* %1, %struct.mtree_entry** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  %8 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %9 = icmp ne %struct.mtree_entry* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %16 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %10, %2
  br label %18

18:                                               ; preds = %143, %17
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %147

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  %26 = load i8, i8* %24, align 1
  store i8 %26, i8* %6, align 1
  %27 = load i8, i8* %6, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %32 = icmp ne %struct.mtree_entry* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %35 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %30, %23
  %37 = load i8, i8* %6, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 92
  br i1 %39, label %40, label %143

40:                                               ; preds = %36
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  switch i32 %44, label %142 [
    i32 48, label %45
    i32 49, label %61
    i32 50, label %61
    i32 51, label %61
    i32 97, label %115
    i32 98, label %118
    i32 102, label %121
    i32 110, label %124
    i32 114, label %127
    i32 115, label %130
    i32 116, label %133
    i32 118, label %136
    i32 92, label %139
  ]

45:                                               ; preds = %40
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp slt i32 %49, 48
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sgt i32 %55, 55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %45
  store i8 0, i8* %6, align 1
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %3, align 8
  br label %142

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %40, %40, %40, %60
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sge i32 %65, 48
  br i1 %66, label %67, label %114

67:                                               ; preds = %61
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp sle i32 %71, 55
  br i1 %72, label %73, label %114

73:                                               ; preds = %67
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp sge i32 %77, 48
  br i1 %78, label %79, label %114

79:                                               ; preds = %73
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sle i32 %83, 55
  br i1 %84, label %85, label %114

85:                                               ; preds = %79
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = sub nsw i32 %89, 48
  %91 = shl i32 %90, 6
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %6, align 1
  %93 = load i8*, i8** %3, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = sub nsw i32 %96, 48
  %98 = shl i32 %97, 3
  %99 = load i8, i8* %6, align 1
  %100 = sext i8 %99 to i32
  %101 = or i32 %100, %98
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %6, align 1
  %103 = load i8*, i8** %3, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = sub nsw i32 %106, 48
  %108 = load i8, i8* %6, align 1
  %109 = sext i8 %108 to i32
  %110 = or i32 %109, %107
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %6, align 1
  %112 = load i8*, i8** %3, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 3
  store i8* %113, i8** %3, align 8
  br label %114

114:                                              ; preds = %85, %79, %73, %67, %61
  br label %142

115:                                              ; preds = %40
  store i8 7, i8* %6, align 1
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %3, align 8
  br label %142

118:                                              ; preds = %40
  store i8 8, i8* %6, align 1
  %119 = load i8*, i8** %3, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %3, align 8
  br label %142

121:                                              ; preds = %40
  store i8 12, i8* %6, align 1
  %122 = load i8*, i8** %3, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %3, align 8
  br label %142

124:                                              ; preds = %40
  store i8 10, i8* %6, align 1
  %125 = load i8*, i8** %3, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %3, align 8
  br label %142

127:                                              ; preds = %40
  store i8 13, i8* %6, align 1
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %3, align 8
  br label %142

130:                                              ; preds = %40
  store i8 32, i8* %6, align 1
  %131 = load i8*, i8** %3, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %3, align 8
  br label %142

133:                                              ; preds = %40
  store i8 9, i8* %6, align 1
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %3, align 8
  br label %142

136:                                              ; preds = %40
  store i8 11, i8* %6, align 1
  %137 = load i8*, i8** %3, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %3, align 8
  br label %142

139:                                              ; preds = %40
  store i8 92, i8* %6, align 1
  %140 = load i8*, i8** %3, align 8
  %141 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %141, i8** %3, align 8
  br label %142

142:                                              ; preds = %40, %139, %136, %133, %130, %127, %124, %121, %118, %115, %114, %57
  br label %143

143:                                              ; preds = %142, %36
  %144 = load i8, i8* %6, align 1
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %5, align 8
  store i8 %144, i8* %145, align 1
  br label %18

147:                                              ; preds = %18
  %148 = load i8*, i8** %5, align 8
  store i8 0, i8* %148, align 1
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
