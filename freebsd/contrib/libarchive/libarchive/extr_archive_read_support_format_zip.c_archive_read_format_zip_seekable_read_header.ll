; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_format_zip_seekable_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_format_zip_seekable_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.zip = type { i64, i64, %struct.zip_entry*, i64, i64, i64, i32, i32, i32, i32, i32* }
%struct.zip_entry = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW = common dso_local global i64 0, align 8
@ARCHIVE_FORMAT_ZIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ZIP\00", align 1
@ARCHIVE_RB_DIR_RIGHT = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @archive_read_format_zip_seekable_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_zip_seekable_read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.zip*, align 8
  %7 = alloca %struct.zip_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.zip*
  store %struct.zip* %17, %struct.zip** %6, align 8
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.zip*, %struct.zip** %6, align 8
  %20 = getelementptr inbounds %struct.zip, %struct.zip* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.zip*, %struct.zip** %6, align 8
  %26 = getelementptr inbounds %struct.zip, %struct.zip* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @ARCHIVE_FORMAT_ZIP, align 4
  %29 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %30 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %33 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %39 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %27
  %42 = load %struct.zip*, %struct.zip** %6, align 8
  %43 = getelementptr inbounds %struct.zip, %struct.zip* %42, i32 0, i32 10
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %48 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %49 = load %struct.zip*, %struct.zip** %6, align 8
  %50 = call i32 @slurp_central_directory(%struct.archive_read* %47, %struct.archive_entry* %48, %struct.zip* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @ARCHIVE_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %201

56:                                               ; preds = %46
  %57 = load %struct.zip*, %struct.zip** %6, align 8
  %58 = getelementptr inbounds %struct.zip, %struct.zip* %57, i32 0, i32 9
  %59 = call i64 @ARCHIVE_RB_TREE_MIN(i32* %58)
  %60 = inttoptr i64 %59 to %struct.zip_entry*
  %61 = load %struct.zip*, %struct.zip** %6, align 8
  %62 = getelementptr inbounds %struct.zip, %struct.zip* %61, i32 0, i32 2
  store %struct.zip_entry* %60, %struct.zip_entry** %62, align 8
  br label %81

63:                                               ; preds = %41
  %64 = load %struct.zip*, %struct.zip** %6, align 8
  %65 = getelementptr inbounds %struct.zip, %struct.zip* %64, i32 0, i32 2
  %66 = load %struct.zip_entry*, %struct.zip_entry** %65, align 8
  %67 = icmp ne %struct.zip_entry* %66, null
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load %struct.zip*, %struct.zip** %6, align 8
  %70 = getelementptr inbounds %struct.zip, %struct.zip* %69, i32 0, i32 9
  %71 = load %struct.zip*, %struct.zip** %6, align 8
  %72 = getelementptr inbounds %struct.zip, %struct.zip* %71, i32 0, i32 2
  %73 = load %struct.zip_entry*, %struct.zip_entry** %72, align 8
  %74 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %73, i32 0, i32 2
  %75 = load i32, i32* @ARCHIVE_RB_DIR_RIGHT, align 4
  %76 = call i64 @__archive_rb_tree_iterate(i32* %70, i32* %74, i32 %75)
  %77 = inttoptr i64 %76 to %struct.zip_entry*
  %78 = load %struct.zip*, %struct.zip** %6, align 8
  %79 = getelementptr inbounds %struct.zip, %struct.zip* %78, i32 0, i32 2
  store %struct.zip_entry* %77, %struct.zip_entry** %79, align 8
  br label %80

80:                                               ; preds = %68, %63
  br label %81

81:                                               ; preds = %80, %56
  %82 = load %struct.zip*, %struct.zip** %6, align 8
  %83 = getelementptr inbounds %struct.zip, %struct.zip* %82, i32 0, i32 2
  %84 = load %struct.zip_entry*, %struct.zip_entry** %83, align 8
  %85 = icmp eq %struct.zip_entry* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %87, i32* %3, align 4
  br label %201

88:                                               ; preds = %81
  %89 = load %struct.zip*, %struct.zip** %6, align 8
  %90 = getelementptr inbounds %struct.zip, %struct.zip* %89, i32 0, i32 2
  %91 = load %struct.zip_entry*, %struct.zip_entry** %90, align 8
  %92 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load %struct.zip*, %struct.zip** %6, align 8
  %98 = getelementptr inbounds %struct.zip, %struct.zip* %97, i32 0, i32 8
  %99 = load %struct.zip*, %struct.zip** %6, align 8
  %100 = getelementptr inbounds %struct.zip, %struct.zip* %99, i32 0, i32 2
  %101 = load %struct.zip_entry*, %struct.zip_entry** %100, align 8
  %102 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i64 @__archive_rb_tree_find_node(i32* %98, i64 %104)
  %106 = inttoptr i64 %105 to %struct.zip_entry*
  store %struct.zip_entry* %106, %struct.zip_entry** %7, align 8
  br label %108

107:                                              ; preds = %88
  store %struct.zip_entry* null, %struct.zip_entry** %7, align 8
  br label %108

108:                                              ; preds = %107, %96
  %109 = load %struct.zip*, %struct.zip** %6, align 8
  %110 = getelementptr inbounds %struct.zip, %struct.zip* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.zip*, %struct.zip** %6, align 8
  %115 = getelementptr inbounds %struct.zip, %struct.zip* %114, i32 0, i32 7
  %116 = call i32 @archive_decrypto_aes_ctr_release(i32* %115)
  br label %117

117:                                              ; preds = %113, %108
  %118 = load %struct.zip*, %struct.zip** %6, align 8
  %119 = getelementptr inbounds %struct.zip, %struct.zip* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.zip*, %struct.zip** %6, align 8
  %124 = getelementptr inbounds %struct.zip, %struct.zip* %123, i32 0, i32 6
  %125 = call i32 @archive_hmac_sha1_cleanup(i32* %124)
  br label %126

126:                                              ; preds = %122, %117
  %127 = load %struct.zip*, %struct.zip** %6, align 8
  %128 = getelementptr inbounds %struct.zip, %struct.zip* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  %129 = load %struct.zip*, %struct.zip** %6, align 8
  %130 = getelementptr inbounds %struct.zip, %struct.zip* %129, i32 0, i32 4
  store i64 0, i64* %130, align 8
  %131 = load %struct.zip*, %struct.zip** %6, align 8
  %132 = getelementptr inbounds %struct.zip, %struct.zip* %131, i32 0, i32 5
  store i64 0, i64* %132, align 8
  %133 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %134 = call i32 @__archive_read_reset_passphrase(%struct.archive_read* %133)
  %135 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %136 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %135, i32 0, i32 0
  %137 = call i64 @archive_filter_bytes(%struct.TYPE_6__* %136, i32 0)
  store i64 %137, i64* %8, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load %struct.zip*, %struct.zip** %6, align 8
  %140 = getelementptr inbounds %struct.zip, %struct.zip* %139, i32 0, i32 2
  %141 = load %struct.zip_entry*, %struct.zip_entry** %140, align 8
  %142 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %138, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %126
  %146 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %147 = load %struct.zip*, %struct.zip** %6, align 8
  %148 = getelementptr inbounds %struct.zip, %struct.zip* %147, i32 0, i32 2
  %149 = load %struct.zip_entry*, %struct.zip_entry** %148, align 8
  %150 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* %8, align 8
  %153 = sub nsw i64 %151, %152
  %154 = call i32 @__archive_read_consume(%struct.archive_read* %146, i64 %153)
  br label %173

155:                                              ; preds = %126
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.zip*, %struct.zip** %6, align 8
  %158 = getelementptr inbounds %struct.zip, %struct.zip* %157, i32 0, i32 2
  %159 = load %struct.zip_entry*, %struct.zip_entry** %158, align 8
  %160 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %156, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %155
  %164 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %165 = load %struct.zip*, %struct.zip** %6, align 8
  %166 = getelementptr inbounds %struct.zip, %struct.zip* %165, i32 0, i32 2
  %167 = load %struct.zip_entry*, %struct.zip_entry** %166, align 8
  %168 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @SEEK_SET, align 4
  %171 = call i32 @__archive_read_seek(%struct.archive_read* %164, i64 %169, i32 %170)
  br label %172

172:                                              ; preds = %163, %155
  br label %173

173:                                              ; preds = %172, %145
  %174 = load %struct.zip*, %struct.zip** %6, align 8
  %175 = getelementptr inbounds %struct.zip, %struct.zip* %174, i32 0, i32 1
  store i64 0, i64* %175, align 8
  %176 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %177 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %178 = load %struct.zip*, %struct.zip** %6, align 8
  %179 = call i32 @zip_read_local_file_header(%struct.archive_read* %176, %struct.archive_entry* %177, %struct.zip* %178)
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @ARCHIVE_OK, align 4
  %182 = icmp ne i32 %180, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %173
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %3, align 4
  br label %201

185:                                              ; preds = %173
  %186 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %187 = icmp ne %struct.zip_entry* %186, null
  br i1 %187, label %188, label %199

188:                                              ; preds = %185
  %189 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %190 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %191 = load %struct.zip_entry*, %struct.zip_entry** %7, align 8
  %192 = call i32 @zip_read_mac_metadata(%struct.archive_read* %189, %struct.archive_entry* %190, %struct.zip_entry* %191)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %10, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %188
  %197 = load i32, i32* %11, align 4
  store i32 %197, i32* %10, align 4
  br label %198

198:                                              ; preds = %196, %188
  br label %199

199:                                              ; preds = %198, %185
  %200 = load i32, i32* %10, align 4
  store i32 %200, i32* %3, align 4
  br label %201

201:                                              ; preds = %199, %183, %86, %54
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @slurp_central_directory(%struct.archive_read*, %struct.archive_entry*, %struct.zip*) #1

declare dso_local i64 @ARCHIVE_RB_TREE_MIN(i32*) #1

declare dso_local i64 @__archive_rb_tree_iterate(i32*, i32*, i32) #1

declare dso_local i64 @__archive_rb_tree_find_node(i32*, i64) #1

declare dso_local i32 @archive_decrypto_aes_ctr_release(i32*) #1

declare dso_local i32 @archive_hmac_sha1_cleanup(i32*) #1

declare dso_local i32 @__archive_read_reset_passphrase(%struct.archive_read*) #1

declare dso_local i64 @archive_filter_bytes(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i32 @__archive_read_seek(%struct.archive_read*, i64, i32) #1

declare dso_local i32 @zip_read_local_file_header(%struct.archive_read*, %struct.archive_entry*, %struct.zip*) #1

declare dso_local i32 @zip_read_mac_metadata(%struct.archive_read*, %struct.archive_entry*, %struct.zip_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
