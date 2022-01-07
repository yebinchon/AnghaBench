; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_read_struct_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_read_struct_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.field_info = type { %struct.nextfield* }
%struct.nextfield = type { %struct.nextfield* }
%struct.type = type { i32 }
%struct.objfile = type { i32 }

@xfree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.field_info*, i8**, %struct.type*, %struct.objfile*)* @read_struct_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_struct_fields(%struct.field_info* %0, i8** %1, %struct.type* %2, %struct.objfile* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.field_info*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.objfile*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.nextfield*, align 8
  store %struct.field_info* %0, %struct.field_info** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.type* %2, %struct.type** %8, align 8
  store %struct.objfile* %3, %struct.objfile** %9, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  br label %14

14:                                               ; preds = %98, %68, %4
  %15 = load i8**, i8*** %7, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 59
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i8**, i8*** %7, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %20, %14
  %27 = phi i1 [ false, %14 ], [ %25, %20 ]
  br i1 %27, label %28, label %105

28:                                               ; preds = %26
  %29 = load i8**, i8*** %7, align 8
  %30 = load %struct.objfile*, %struct.objfile** %9, align 8
  %31 = call i32 @STABS_CONTINUE(i8** %29, %struct.objfile* %30)
  %32 = call i64 @xmalloc(i32 8)
  %33 = inttoptr i64 %32 to %struct.nextfield*
  store %struct.nextfield* %33, %struct.nextfield** %11, align 8
  %34 = load i32, i32* @xfree, align 4
  %35 = load %struct.nextfield*, %struct.nextfield** %11, align 8
  %36 = call i32 @make_cleanup(i32 %34, %struct.nextfield* %35)
  %37 = load %struct.nextfield*, %struct.nextfield** %11, align 8
  %38 = call i32 @memset(%struct.nextfield* %37, i32 0, i32 8)
  %39 = load %struct.field_info*, %struct.field_info** %6, align 8
  %40 = getelementptr inbounds %struct.field_info, %struct.field_info* %39, i32 0, i32 0
  %41 = load %struct.nextfield*, %struct.nextfield** %40, align 8
  %42 = load %struct.nextfield*, %struct.nextfield** %11, align 8
  %43 = getelementptr inbounds %struct.nextfield, %struct.nextfield* %42, i32 0, i32 0
  store %struct.nextfield* %41, %struct.nextfield** %43, align 8
  %44 = load %struct.nextfield*, %struct.nextfield** %11, align 8
  %45 = load %struct.field_info*, %struct.field_info** %6, align 8
  %46 = getelementptr inbounds %struct.field_info, %struct.field_info* %45, i32 0, i32 0
  store %struct.nextfield* %44, %struct.nextfield** %46, align 8
  %47 = load i8**, i8*** %7, align 8
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @is_cplus_marker(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %28
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %58, 95
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load %struct.field_info*, %struct.field_info** %6, align 8
  %62 = load i8**, i8*** %7, align 8
  %63 = load %struct.type*, %struct.type** %8, align 8
  %64 = load %struct.objfile*, %struct.objfile** %9, align 8
  %65 = call i32 @read_cpp_abbrev(%struct.field_info* %61, i8** %62, %struct.type* %63, %struct.objfile* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %126

68:                                               ; preds = %60
  br label %14

69:                                               ; preds = %54, %28
  br label %70

70:                                               ; preds = %82, %69
  %71 = load i8*, i8** %10, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 58
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i8*, i8** %10, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %75, %70
  %81 = phi i1 [ false, %70 ], [ %79, %75 ]
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %10, align 8
  br label %70

85:                                               ; preds = %80
  %86 = load i8*, i8** %10, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %5, align 4
  br label %126

91:                                               ; preds = %85
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 58
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %105

98:                                               ; preds = %91
  %99 = load %struct.field_info*, %struct.field_info** %6, align 8
  %100 = load i8**, i8*** %7, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load %struct.type*, %struct.type** %8, align 8
  %103 = load %struct.objfile*, %struct.objfile** %9, align 8
  %104 = call i32 @read_one_struct_field(%struct.field_info* %99, i8** %100, i8* %101, %struct.type* %102, %struct.objfile* %103)
  br label %14

105:                                              ; preds = %97, %26
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 58
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 58
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load %struct.field_info*, %struct.field_info** %6, align 8
  %119 = getelementptr inbounds %struct.field_info, %struct.field_info* %118, i32 0, i32 0
  %120 = load %struct.nextfield*, %struct.nextfield** %119, align 8
  %121 = getelementptr inbounds %struct.nextfield, %struct.nextfield* %120, i32 0, i32 0
  %122 = load %struct.nextfield*, %struct.nextfield** %121, align 8
  %123 = load %struct.field_info*, %struct.field_info** %6, align 8
  %124 = getelementptr inbounds %struct.field_info, %struct.field_info* %123, i32 0, i32 0
  store %struct.nextfield* %122, %struct.nextfield** %124, align 8
  br label %125

125:                                              ; preds = %117, %111, %105
  store i32 1, i32* %5, align 4
  br label %126

126:                                              ; preds = %125, %90, %67
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @STABS_CONTINUE(i8**, %struct.objfile*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @make_cleanup(i32, %struct.nextfield*) #1

declare dso_local i32 @memset(%struct.nextfield*, i32, i32) #1

declare dso_local i64 @is_cplus_marker(i8 signext) #1

declare dso_local i32 @read_cpp_abbrev(%struct.field_info*, i8**, %struct.type*, %struct.objfile*) #1

declare dso_local i32 @read_one_struct_field(%struct.field_info*, i8**, i8*, %struct.type*, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
