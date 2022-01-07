; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_compress_owner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_msgencode.c_compress_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.regional = type { i32 }
%struct.compress_tree_node = type { i32, i64 }

@RETVAL_TRUNC = common dso_local global i32 0, align 4
@PTR_MAX_OFFSET = common dso_local global i64 0, align 8
@RETVAL_OUTMEM = common dso_local global i32 0, align 4
@RETVAL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_packed_rrset_key*, i32*, %struct.regional*, %struct.compress_tree_node**, i64, i32*, i32)* @compress_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_owner(%struct.ub_packed_rrset_key* %0, i32* %1, %struct.regional* %2, %struct.compress_tree_node** %3, i64 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ub_packed_rrset_key*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.regional*, align 8
  %12 = alloca %struct.compress_tree_node**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.compress_tree_node*, align 8
  %17 = alloca %struct.compress_tree_node**, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.regional* %2, %struct.regional** %11, align 8
  store %struct.compress_tree_node** %3, %struct.compress_tree_node*** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.compress_tree_node** null, %struct.compress_tree_node*** %17, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %110, label %21

21:                                               ; preds = %7
  %22 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %12, align 8
  %23 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %24 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call %struct.compress_tree_node* @compress_tree_lookup(%struct.compress_tree_node** %22, i32* %26, i32 %27, %struct.compress_tree_node*** %17)
  store %struct.compress_tree_node* %28, %struct.compress_tree_node** %16, align 8
  %29 = icmp ne %struct.compress_tree_node* %28, null
  br i1 %29, label %30, label %62

30:                                               ; preds = %21
  %31 = load %struct.compress_tree_node*, %struct.compress_tree_node** %16, align 8
  %32 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %15, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.compress_tree_node*, %struct.compress_tree_node** %16, align 8
  %38 = getelementptr inbounds %struct.compress_tree_node, %struct.compress_tree_node* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @PTR_CREATE(i64 %39)
  %41 = call i32 @htons(i32 %40)
  %42 = load i32*, i32** %14, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %30
  %44 = load i32*, i32** %10, align 8
  %45 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %46 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.compress_tree_node*, %struct.compress_tree_node** %16, align 8
  %51 = call i32 @write_compressed_dname(i32* %44, i32* %48, i32 %49, %struct.compress_tree_node* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %54, i32* %8, align 4
  br label %135

55:                                               ; preds = %43
  %56 = load i32*, i32** %10, align 8
  %57 = call i32 @sldns_buffer_remaining(i32* %56)
  %58 = icmp slt i32 %57, 10
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %60, i32* %8, align 4
  br label %135

61:                                               ; preds = %55
  br label %95

62:                                               ; preds = %21
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @sldns_buffer_remaining(i32* %63)
  %65 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %66 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 4
  %70 = add nsw i32 %69, 4
  %71 = add nsw i32 %70, 2
  %72 = icmp slt i32 %64, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %74, i32* %8, align 4
  br label %135

75:                                               ; preds = %62
  %76 = load i32*, i32** %10, align 8
  %77 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %78 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %82 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sldns_buffer_write(i32* %76, i32* %80, i32 %84)
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @PTR_MAX_OFFSET, align 8
  %88 = icmp ule i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %75
  %90 = load i64, i64* %13, align 8
  %91 = call i32 @PTR_CREATE(i64 %90)
  %92 = call i32 @htons(i32 %91)
  %93 = load i32*, i32** %14, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %89, %75
  br label %95

95:                                               ; preds = %94, %61
  %96 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %9, align 8
  %97 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %15, align 4
  %101 = load i64, i64* %13, align 8
  %102 = load %struct.regional*, %struct.regional** %11, align 8
  %103 = load %struct.compress_tree_node*, %struct.compress_tree_node** %16, align 8
  %104 = load %struct.compress_tree_node**, %struct.compress_tree_node*** %17, align 8
  %105 = call i32 @compress_tree_store(i32* %99, i32 %100, i64 %101, %struct.regional* %102, %struct.compress_tree_node* %103, %struct.compress_tree_node** %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %95
  %108 = load i32, i32* @RETVAL_OUTMEM, align 4
  store i32 %108, i32* %8, align 4
  br label %135

109:                                              ; preds = %95
  br label %133

110:                                              ; preds = %7
  %111 = load i32, i32* %15, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @sldns_buffer_remaining(i32* %114)
  %116 = icmp slt i32 %115, 11
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %118, i32* %8, align 4
  br label %135

119:                                              ; preds = %113
  %120 = load i32*, i32** %10, align 8
  %121 = call i32 @sldns_buffer_write_u8(i32* %120, i32 0)
  br label %132

122:                                              ; preds = %110
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @sldns_buffer_remaining(i32* %123)
  %125 = icmp slt i32 %124, 12
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @RETVAL_TRUNC, align 4
  store i32 %127, i32* %8, align 4
  br label %135

128:                                              ; preds = %122
  %129 = load i32*, i32** %10, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = call i32 @sldns_buffer_write(i32* %129, i32* %130, i32 2)
  br label %132

132:                                              ; preds = %128, %119
  br label %133

133:                                              ; preds = %132, %109
  %134 = load i32, i32* @RETVAL_OK, align 4
  store i32 %134, i32* %8, align 4
  br label %135

135:                                              ; preds = %133, %126, %117, %107, %73, %59, %53
  %136 = load i32, i32* %8, align 4
  ret i32 %136
}

declare dso_local %struct.compress_tree_node* @compress_tree_lookup(%struct.compress_tree_node**, i32*, i32, %struct.compress_tree_node***) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @PTR_CREATE(i64) #1

declare dso_local i32 @write_compressed_dname(i32*, i32*, i32, %struct.compress_tree_node*) #1

declare dso_local i32 @sldns_buffer_remaining(i32*) #1

declare dso_local i32 @sldns_buffer_write(i32*, i32*, i32) #1

declare dso_local i32 @compress_tree_store(i32*, i32, i64, %struct.regional*, %struct.compress_tree_node*, %struct.compress_tree_node**) #1

declare dso_local i32 @sldns_buffer_write_u8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
