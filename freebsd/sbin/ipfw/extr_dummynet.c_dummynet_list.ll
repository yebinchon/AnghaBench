; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_dummynet_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_dummynet_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.dn_id = type { i32, i32, i32 }

@DN_CMD_GET = common dso_local global i32 0, align 4
@DN_API_VERSION = common dso_local global i32 0, align 4
@co = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@DN_LINK = common dso_local global i32 0, align 4
@DN_FS = common dso_local global i32 0, align 4
@DN_SCH = common dso_local global i32 0, align 4
@IP_DUMMYNET3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dummynet_list(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dn_id*, align 8
  %8 = alloca %struct.dn_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.dn_id* null, %struct.dn_id** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @parse_range(i32 %20, i8** %21, i32* null, i32 0)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = mul i64 %25, 2
  %27 = add i64 12, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call %struct.dn_id* @safe_calloc(i32 1, i32 %29)
  store %struct.dn_id* %30, %struct.dn_id** %7, align 8
  %31 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @DN_CMD_GET, align 4
  %34 = load i32, i32* @DN_API_VERSION, align 4
  %35 = call i32 @oid_fill(%struct.dn_id* %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %3
  %39 = load i32, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %42 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %41, i64 1
  %43 = bitcast %struct.dn_id* %42 to i32*
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %44, 2
  %46 = call i32 @parse_range(i32 %39, i8** %40, i32* %43, i32 %45)
  br label %47

47:                                               ; preds = %38, %3
  store i32 4, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 4
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 4, i32* %14, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 4, i32* %14, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @co, i32 0, i32 0), align 4
  switch i32 %58, label %71 [
    i32 1, label %59
    i32 2, label %63
    i32 3, label %67
  ]

59:                                               ; preds = %57
  %60 = load i32, i32* @DN_LINK, align 4
  %61 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %62 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %71

63:                                               ; preds = %57
  %64 = load i32, i32* @DN_FS, align 4
  %65 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %66 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %71

67:                                               ; preds = %57
  %68 = load i32, i32* @DN_SCH, align 4
  %69 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %70 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %57, %67, %63, %59
  %72 = load i32, i32* %11, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 4096, i32* %12, align 4
  br label %98

75:                                               ; preds = %71
  %76 = load i32, i32* @IP_DUMMYNET3, align 4
  %77 = sub nsw i32 0, %76
  %78 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %79 = ptrtoint i32* %13 to i64
  %80 = call i32 @do_cmd(i32 %77, %struct.dn_id* %78, i64 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %75
  %84 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %85 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp ule i64 %87, 12
  br i1 %88, label %89, label %90

89:                                               ; preds = %83, %75
  br label %146

90:                                               ; preds = %83
  %91 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %92 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %12, align 4
  %96 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %97 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %96, i32 0, i32 1
  store i32 12, i32* %97, align 4
  br label %98

98:                                               ; preds = %90, %74
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %137, %98
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 20
  br i1 %101, label %102, label %140

102:                                              ; preds = %99
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %13, align 4
  %104 = load %struct.dn_id*, %struct.dn_id** %8, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call %struct.dn_id* @safe_realloc(%struct.dn_id* %104, i32 %105)
  store %struct.dn_id* %106, %struct.dn_id** %8, align 8
  %107 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %108 = load %struct.dn_id*, %struct.dn_id** %8, align 8
  %109 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %110 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @bcopy(%struct.dn_id* %107, %struct.dn_id* %108, i32 %111)
  %113 = load i32, i32* @IP_DUMMYNET3, align 4
  %114 = sub nsw i32 0, %113
  %115 = load %struct.dn_id*, %struct.dn_id** %8, align 8
  %116 = ptrtoint i32* %13 to i64
  %117 = call i32 @do_cmd(i32 %114, %struct.dn_id* %115, i64 %116)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %102
  %121 = load %struct.dn_id*, %struct.dn_id** %8, align 8
  %122 = getelementptr inbounds %struct.dn_id, %struct.dn_id* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp ule i64 %124, 12
  br i1 %125, label %126, label %127

126:                                              ; preds = %120, %102
  br label %146

127:                                              ; preds = %120
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %12, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %140

134:                                              ; preds = %127
  %135 = load i32, i32* %12, align 4
  %136 = mul nsw i32 %135, 2
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %99

140:                                              ; preds = %133, %99
  %141 = load %struct.dn_id*, %struct.dn_id** %8, align 8
  %142 = load %struct.dn_id*, %struct.dn_id** %8, align 8
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @O_NEXT(%struct.dn_id* %142, i32 %143)
  %145 = call i32 @list_pipes(%struct.dn_id* %141, i32 %144)
  br label %146

146:                                              ; preds = %140, %126, %89
  %147 = load %struct.dn_id*, %struct.dn_id** %8, align 8
  %148 = icmp ne %struct.dn_id* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load %struct.dn_id*, %struct.dn_id** %8, align 8
  %151 = call i32 @free(%struct.dn_id* %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load %struct.dn_id*, %struct.dn_id** %7, align 8
  %154 = call i32 @free(%struct.dn_id* %153)
  ret void
}

declare dso_local i32 @parse_range(i32, i8**, i32*, i32) #1

declare dso_local %struct.dn_id* @safe_calloc(i32, i32) #1

declare dso_local i32 @oid_fill(%struct.dn_id*, i32, i32, i32) #1

declare dso_local i32 @do_cmd(i32, %struct.dn_id*, i64) #1

declare dso_local %struct.dn_id* @safe_realloc(%struct.dn_id*, i32) #1

declare dso_local i32 @bcopy(%struct.dn_id*, %struct.dn_id*, i32) #1

declare dso_local i32 @list_pipes(%struct.dn_id*, i32) #1

declare dso_local i32 @O_NEXT(%struct.dn_id*, i32) #1

declare dso_local i32 @free(%struct.dn_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
