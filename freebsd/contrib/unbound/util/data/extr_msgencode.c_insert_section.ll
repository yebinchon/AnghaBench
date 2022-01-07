; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_insert_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_insert_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_info = type { i32* }
%struct.regional = type { i32 }
%struct.compress_tree_node = type { i32 }

@LDNS_SECTION_ADDITIONAL = common dso_local global i32 0, align 4
@LDNS_SECTION_ANSWER = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_ANY = common dso_local global i32 0, align 4
@RETVAL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reply_info*, i64, i32*, i32*, i64, i32, %struct.regional*, %struct.compress_tree_node**, i32, i32, i32, i64)* @insert_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_section(%struct.reply_info* %0, i64 %1, i32* %2, i32* %3, i64 %4, i32 %5, %struct.regional* %6, %struct.compress_tree_node** %7, i32 %8, i32 %9, i32 %10, i64 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.reply_info*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.regional*, align 8
  %21 = alloca %struct.compress_tree_node**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store %struct.reply_info* %0, %struct.reply_info** %14, align 8
  store i64 %1, i64* %15, align 8
  store i32* %2, i32** %16, align 8
  store i32* %3, i32** %17, align 8
  store i64 %4, i64* %18, align 8
  store i32 %5, i32* %19, align 4
  store %struct.regional* %6, %struct.regional** %20, align 8
  store %struct.compress_tree_node** %7, %struct.compress_tree_node*** %21, align 8
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i64 %11, i64* %25, align 8
  %29 = load i32, i32* %22, align 4
  %30 = load i32, i32* @LDNS_SECTION_ADDITIONAL, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %79

32:                                               ; preds = %12
  %33 = load i32, i32* %22, align 4
  %34 = load i32, i32* @LDNS_SECTION_ANSWER, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %23, align 4
  %38 = load i32, i32* @LDNS_RR_TYPE_ANY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, i32* %24, align 4
  br label %41

41:                                               ; preds = %40, %36, %32
  store i64 0, i64* %27, align 8
  br label %42

42:                                               ; preds = %75, %41
  %43 = load i64, i64* %27, align 8
  %44 = load i64, i64* %15, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %42
  %47 = load i32*, i32** %17, align 8
  %48 = call i64 @sldns_buffer_position(i32* %47)
  store i64 %48, i64* %28, align 8
  %49 = load %struct.reply_info*, %struct.reply_info** %14, align 8
  %50 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %18, align 8
  %53 = load i64, i64* %27, align 8
  %54 = add i64 %52, %53
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %17, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = load i32, i32* %19, align 4
  %60 = load %struct.regional*, %struct.regional** %20, align 8
  %61 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %21, align 8
  %62 = load i32, i32* %22, align 4
  %63 = load i32, i32* %23, align 4
  %64 = load i32, i32* %24, align 4
  %65 = load i64, i64* %25, align 8
  %66 = call i32 @packed_rrset_encode(i32 %56, i32* %57, i32* %58, i32 %59, %struct.regional* %60, i32 1, i32 1, %struct.compress_tree_node** %61, i32 %62, i32 %63, i32 %64, i64 %65)
  store i32 %66, i32* %26, align 4
  %67 = load i32, i32* @RETVAL_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %46
  %70 = load i32*, i32** %17, align 8
  %71 = load i64, i64* %28, align 8
  %72 = call i32 @sldns_buffer_set_position(i32* %70, i64 %71)
  %73 = load i32, i32* %26, align 4
  store i32 %73, i32* %13, align 4
  br label %160

74:                                               ; preds = %46
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %27, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %27, align 8
  br label %42

78:                                               ; preds = %42
  br label %158

79:                                               ; preds = %12
  store i64 0, i64* %27, align 8
  br label %80

80:                                               ; preds = %113, %79
  %81 = load i64, i64* %27, align 8
  %82 = load i64, i64* %15, align 8
  %83 = icmp ult i64 %81, %82
  br i1 %83, label %84, label %116

84:                                               ; preds = %80
  %85 = load i32*, i32** %17, align 8
  %86 = call i64 @sldns_buffer_position(i32* %85)
  store i64 %86, i64* %28, align 8
  %87 = load %struct.reply_info*, %struct.reply_info** %14, align 8
  %88 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %18, align 8
  %91 = load i64, i64* %27, align 8
  %92 = add i64 %90, %91
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %17, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = load i32, i32* %19, align 4
  %98 = load %struct.regional*, %struct.regional** %20, align 8
  %99 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %21, align 8
  %100 = load i32, i32* %22, align 4
  %101 = load i32, i32* %23, align 4
  %102 = load i32, i32* %24, align 4
  %103 = load i64, i64* %25, align 8
  %104 = call i32 @packed_rrset_encode(i32 %94, i32* %95, i32* %96, i32 %97, %struct.regional* %98, i32 1, i32 0, %struct.compress_tree_node** %99, i32 %100, i32 %101, i32 %102, i64 %103)
  store i32 %104, i32* %26, align 4
  %105 = load i32, i32* @RETVAL_OK, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %84
  %108 = load i32*, i32** %17, align 8
  %109 = load i64, i64* %28, align 8
  %110 = call i32 @sldns_buffer_set_position(i32* %108, i64 %109)
  %111 = load i32, i32* %26, align 4
  store i32 %111, i32* %13, align 4
  br label %160

112:                                              ; preds = %84
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %27, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %27, align 8
  br label %80

116:                                              ; preds = %80
  %117 = load i32, i32* %24, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %157

119:                                              ; preds = %116
  store i64 0, i64* %27, align 8
  br label %120

120:                                              ; preds = %153, %119
  %121 = load i64, i64* %27, align 8
  %122 = load i64, i64* %15, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %120
  %125 = load i32*, i32** %17, align 8
  %126 = call i64 @sldns_buffer_position(i32* %125)
  store i64 %126, i64* %28, align 8
  %127 = load %struct.reply_info*, %struct.reply_info** %14, align 8
  %128 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* %27, align 8
  %132 = add i64 %130, %131
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %17, align 8
  %136 = load i32*, i32** %16, align 8
  %137 = load i32, i32* %19, align 4
  %138 = load %struct.regional*, %struct.regional** %20, align 8
  %139 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %21, align 8
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %23, align 4
  %142 = load i32, i32* %24, align 4
  %143 = load i64, i64* %25, align 8
  %144 = call i32 @packed_rrset_encode(i32 %134, i32* %135, i32* %136, i32 %137, %struct.regional* %138, i32 0, i32 1, %struct.compress_tree_node** %139, i32 %140, i32 %141, i32 %142, i64 %143)
  store i32 %144, i32* %26, align 4
  %145 = load i32, i32* @RETVAL_OK, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %124
  %148 = load i32*, i32** %17, align 8
  %149 = load i64, i64* %28, align 8
  %150 = call i32 @sldns_buffer_set_position(i32* %148, i64 %149)
  %151 = load i32, i32* %26, align 4
  store i32 %151, i32* %13, align 4
  br label %160

152:                                              ; preds = %124
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %27, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %27, align 8
  br label %120

156:                                              ; preds = %120
  br label %157

157:                                              ; preds = %156, %116
  br label %158

158:                                              ; preds = %157, %78
  %159 = load i32, i32* @RETVAL_OK, align 4
  store i32 %159, i32* %13, align 4
  br label %160

160:                                              ; preds = %158, %147, %107, %69
  %161 = load i32, i32* %13, align 4
  ret i32 %161
}

declare dso_local i64 @sldns_buffer_position(i32*) #1

declare dso_local i32 @packed_rrset_encode(i32, i32*, i32*, i32, %struct.regional*, i32, i32, %struct.compress_tree_node**, i32, i32, i32, i64) #1

declare dso_local i32 @sldns_buffer_set_position(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
