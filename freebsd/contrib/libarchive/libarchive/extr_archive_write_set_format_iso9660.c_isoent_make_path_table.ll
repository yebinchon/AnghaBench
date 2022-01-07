; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_make_path_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_make_path_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i64, i64, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_DEPTH = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Too many directories(%d) over 65535.\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @isoent_make_path_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_make_path_table(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.iso9660*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %8 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %9 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %8, i32 0, i32 1
  %10 = load %struct.iso9660*, %struct.iso9660** %9, align 8
  store %struct.iso9660* %10, %struct.iso9660** %4, align 8
  %11 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %12 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MAX_DEPTH, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %18 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %24 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %37

28:                                               ; preds = %22, %16
  %29 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %30 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %31 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %30, i32 0, i32 3
  %32 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %33 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @isoent_alloc_path_table(%struct.archive_write* %29, %struct.TYPE_8__* %31, i64 %35)
  store i32 %36, i32* %6, align 4
  br label %43

37:                                               ; preds = %22, %1
  %38 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %39 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %40 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %39, i32 0, i32 3
  %41 = load i64, i64* @MAX_DEPTH, align 8
  %42 = call i32 @isoent_alloc_path_table(%struct.archive_write* %38, %struct.TYPE_8__* %40, i64 %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %37, %28
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %204

48:                                               ; preds = %43
  %49 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %50 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %56 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %57 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %56, i32 0, i32 1
  %58 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %59 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  %62 = call i32 @isoent_alloc_path_table(%struct.archive_write* %55, %struct.TYPE_8__* %57, i64 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %2, align 4
  br label %204

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %48
  %69 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %70 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %69, i32 0, i32 3
  %71 = call i32 @isoent_collect_dirs(%struct.TYPE_8__* %70, i32* null, i32 0)
  %72 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %73 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %79 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %78, i32 0, i32 1
  %80 = call i32 @isoent_collect_dirs(%struct.TYPE_8__* %79, i32* null, i32 0)
  br label %81

81:                                               ; preds = %77, %68
  %82 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %83 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %89 = call i32 @isoent_rr_move(%struct.archive_write* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %204

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %81
  %96 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %97 = call i32 @isofile_connect_hardlink_files(%struct.iso9660* %96)
  %98 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %99 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %100 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %99, i32 0, i32 3
  %101 = call i32 @isoent_traverse_tree(%struct.archive_write* %98, %struct.TYPE_8__* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %204

106:                                              ; preds = %95
  %107 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %108 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %114 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %115 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %114, i32 0, i32 1
  %116 = call i32 @isoent_traverse_tree(%struct.archive_write* %113, %struct.TYPE_8__* %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %2, align 4
  br label %204

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %121, %106
  store i32 1, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %141, %122
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %126 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %124, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %123
  %131 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %132 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %133 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %132, i32 0, i32 3
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @isoent_make_path_table_2(%struct.archive_write* %131, %struct.TYPE_8__* %133, i32 %134, i32* %7)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %204

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %123

144:                                              ; preds = %123
  %145 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %146 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %173

150:                                              ; preds = %144
  store i32 1, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %169, %150
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %154 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %152, %156
  br i1 %157, label %158, label %172

158:                                              ; preds = %151
  %159 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %160 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %161 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %160, i32 0, i32 1
  %162 = load i32, i32* %5, align 4
  %163 = call i32 @isoent_make_path_table_2(%struct.archive_write* %159, %struct.TYPE_8__* %161, i32 %162, i32* %7)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %158
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %2, align 4
  br label %204

168:                                              ; preds = %158
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %5, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %151

172:                                              ; preds = %151
  br label %173

173:                                              ; preds = %172, %144
  %174 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %175 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %173
  %180 = load i32, i32* %7, align 4
  %181 = icmp sgt i32 %180, 65535
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %184 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %183, i32 0, i32 0
  %185 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @archive_set_error(i32* %184, i32 %185, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %188, i32* %2, align 4
  br label %204

189:                                              ; preds = %179, %173
  %190 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %191 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %190, i32 0, i32 3
  %192 = call i32 @calculate_path_table_size(%struct.TYPE_8__* %191)
  %193 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %194 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %189
  %199 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %200 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %199, i32 0, i32 1
  %201 = call i32 @calculate_path_table_size(%struct.TYPE_8__* %200)
  br label %202

202:                                              ; preds = %198, %189
  %203 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %202, %182, %166, %138, %119, %104, %92, %65, %46
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @isoent_alloc_path_table(%struct.archive_write*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @isoent_collect_dirs(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @isoent_rr_move(%struct.archive_write*) #1

declare dso_local i32 @isofile_connect_hardlink_files(%struct.iso9660*) #1

declare dso_local i32 @isoent_traverse_tree(%struct.archive_write*, %struct.TYPE_8__*) #1

declare dso_local i32 @isoent_make_path_table_2(%struct.archive_write*, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

declare dso_local i32 @calculate_path_table_size(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
