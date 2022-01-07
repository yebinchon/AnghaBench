; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_get_global_set_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_get_global_set_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtree_writer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i64, i32 }
%struct.mtree_entry = type { i64, i64, i64, i64, i64, i32 }

@F_GNAME = common dso_local global i32 0, align 4
@F_GID = common dso_local global i32 0, align 4
@F_UNAME = common dso_local global i32 0, align 4
@F_UID = common dso_local global i32 0, align 4
@F_FLAGS = common dso_local global i32 0, align 4
@F_MODE = common dso_local global i32 0, align 4
@F_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtree_writer*, %struct.mtree_entry*)* @get_global_set_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_global_set_keys(%struct.mtree_writer* %0, %struct.mtree_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtree_writer*, align 8
  %5 = alloca %struct.mtree_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.mtree_writer* %0, %struct.mtree_writer** %4, align 8
  store %struct.mtree_entry* %1, %struct.mtree_entry** %5, align 8
  %7 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %8 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %11 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %171

17:                                               ; preds = %2
  %18 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %19 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @F_GNAME, align 4
  %23 = load i32, i32* @F_GID, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %17
  %28 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %29 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %33 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load i32, i32* @F_GNAME, align 4
  %38 = load i32, i32* @F_GID, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %36, %27, %17
  %44 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %45 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @F_UNAME, align 4
  %49 = load i32, i32* @F_UID, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %43
  %54 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %55 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %59 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %53
  %63 = load i32, i32* @F_UNAME, align 4
  %64 = load i32, i32* @F_UID, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %62, %53, %43
  %70 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %71 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @F_FLAGS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %69
  %78 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %79 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %83 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %77
  %87 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %88 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %92 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = load i32, i32* @F_FLAGS, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %95, %86, %77
  br label %101

101:                                              ; preds = %100, %69
  %102 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %103 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @F_MODE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %101
  %110 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %111 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %115 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %109
  %119 = load i32, i32* @F_MODE, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %6, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %118, %109, %101
  %124 = load %struct.mtree_entry*, %struct.mtree_entry** %5, align 8
  %125 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %149 [
    i32 130, label %127
    i32 128, label %127
    i32 133, label %127
    i32 134, label %127
    i32 131, label %127
    i32 132, label %128
    i32 129, label %148
  ]

127:                                              ; preds = %123, %123, %123, %123, %123
  br label %169

128:                                              ; preds = %123
  %129 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %130 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @F_TYPE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %128
  %137 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %138 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 132
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load i32, i32* @F_TYPE, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %6, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %142, %136, %128
  br label %169

148:                                              ; preds = %123
  br label %149

149:                                              ; preds = %123, %148
  %150 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %151 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @F_TYPE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %149
  %158 = load %struct.mtree_writer*, %struct.mtree_writer** %4, align 8
  %159 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 129
  br i1 %162, label %163, label %168

163:                                              ; preds = %157
  %164 = load i32, i32* @F_TYPE, align 4
  %165 = xor i32 %164, -1
  %166 = load i32, i32* %6, align 4
  %167 = and i32 %166, %165
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %163, %157, %149
  br label %169

169:                                              ; preds = %168, %147, %127
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %15
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
