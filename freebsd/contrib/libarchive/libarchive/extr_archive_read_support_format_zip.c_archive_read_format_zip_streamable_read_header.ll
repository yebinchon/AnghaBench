; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_format_zip_streamable_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_archive_read_format_zip_streamable_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.zip = type { i64, i64, i64, i64, i64, i32, i32, i32*, i32* }

@ARCHIVE_FORMAT_ZIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ZIP\00", align 1
@ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Out  of memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @archive_read_format_zip_streamable_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_zip_streamable_read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.zip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %11 = load i32, i32* @ARCHIVE_FORMAT_ZIP, align 4
  %12 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 8
  %15 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %22 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  br label %24

24:                                               ; preds = %20, %2
  %25 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %26 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.zip*
  store %struct.zip* %30, %struct.zip** %6, align 8
  %31 = load %struct.zip*, %struct.zip** %6, align 8
  %32 = getelementptr inbounds %struct.zip, %struct.zip* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ARCHIVE_READ_FORMAT_ENCRYPTION_DONT_KNOW, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.zip*, %struct.zip** %6, align 8
  %38 = getelementptr inbounds %struct.zip, %struct.zip* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %24
  %40 = load %struct.zip*, %struct.zip** %6, align 8
  %41 = getelementptr inbounds %struct.zip, %struct.zip* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = call i32* @malloc(i32 4)
  %46 = load %struct.zip*, %struct.zip** %6, align 8
  %47 = getelementptr inbounds %struct.zip, %struct.zip* %46, i32 0, i32 8
  store i32* %45, i32** %47, align 8
  %48 = load %struct.zip*, %struct.zip** %6, align 8
  %49 = getelementptr inbounds %struct.zip, %struct.zip* %48, i32 0, i32 8
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %54 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %53, i32 0, i32 0
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = call i32 @archive_set_error(%struct.TYPE_4__* %54, i32 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %57, i32* %3, align 4
  br label %201

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %39
  %60 = load %struct.zip*, %struct.zip** %6, align 8
  %61 = getelementptr inbounds %struct.zip, %struct.zip* %60, i32 0, i32 8
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.zip*, %struct.zip** %6, align 8
  %64 = getelementptr inbounds %struct.zip, %struct.zip* %63, i32 0, i32 7
  store i32* %62, i32** %64, align 8
  %65 = load %struct.zip*, %struct.zip** %6, align 8
  %66 = getelementptr inbounds %struct.zip, %struct.zip* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @memset(i32* %67, i32 0, i32 4)
  %69 = load %struct.zip*, %struct.zip** %6, align 8
  %70 = getelementptr inbounds %struct.zip, %struct.zip* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load %struct.zip*, %struct.zip** %6, align 8
  %75 = getelementptr inbounds %struct.zip, %struct.zip* %74, i32 0, i32 6
  %76 = call i32 @archive_decrypto_aes_ctr_release(i32* %75)
  br label %77

77:                                               ; preds = %73, %59
  %78 = load %struct.zip*, %struct.zip** %6, align 8
  %79 = getelementptr inbounds %struct.zip, %struct.zip* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.zip*, %struct.zip** %6, align 8
  %84 = getelementptr inbounds %struct.zip, %struct.zip* %83, i32 0, i32 5
  %85 = call i32 @archive_hmac_sha1_cleanup(i32* %84)
  br label %86

86:                                               ; preds = %82, %77
  %87 = load %struct.zip*, %struct.zip** %6, align 8
  %88 = getelementptr inbounds %struct.zip, %struct.zip* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.zip*, %struct.zip** %6, align 8
  %90 = getelementptr inbounds %struct.zip, %struct.zip* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.zip*, %struct.zip** %6, align 8
  %92 = getelementptr inbounds %struct.zip, %struct.zip* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %94 = call i32 @__archive_read_reset_passphrase(%struct.archive_read* %93)
  %95 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %96 = load %struct.zip*, %struct.zip** %6, align 8
  %97 = getelementptr inbounds %struct.zip, %struct.zip* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @__archive_read_consume(%struct.archive_read* %95, i64 %98)
  %100 = load %struct.zip*, %struct.zip** %6, align 8
  %101 = getelementptr inbounds %struct.zip, %struct.zip* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %197, %86
  store i64 0, i64* %7, align 8
  %103 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %104 = call i8* @__archive_read_ahead(%struct.archive_read* %103, i32 4, i32* %10)
  store i8* %104, i8** %8, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %102
  %108 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %108, i32* %3, align 4
  br label %201

109:                                              ; preds = %102
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  store i8* %113, i8** %9, align 8
  br label %114

114:                                              ; preds = %192, %109
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 4
  %117 = load i8*, i8** %9, align 8
  %118 = icmp ule i8* %116, %117
  br i1 %118, label %119, label %197

119:                                              ; preds = %114
  %120 = load i8*, i8** %8, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 0
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 80
  br i1 %124, label %125, label %192

125:                                              ; preds = %119
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 75
  br i1 %130, label %131, label %192

131:                                              ; preds = %125
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %151

137:                                              ; preds = %131
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 3
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 4
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %145 = load i64, i64* %7, align 8
  %146 = call i32 @__archive_read_consume(%struct.archive_read* %144, i64 %145)
  %147 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %148 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %149 = load %struct.zip*, %struct.zip** %6, align 8
  %150 = call i32 @zip_read_local_file_header(%struct.archive_read* %147, %struct.archive_entry* %148, %struct.zip* %149)
  store i32 %150, i32* %3, align 4
  br label %201

151:                                              ; preds = %137, %131
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = load i8*, i8** %8, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 3
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %164, i32* %3, align 4
  br label %201

165:                                              ; preds = %157, %151
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 2
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 5
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = load i8*, i8** %8, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 3
  %174 = load i8, i8* %173, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp eq i32 %175, 6
  br i1 %176, label %189, label %177

177:                                              ; preds = %171, %165
  %178 = load i8*, i8** %8, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 2
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 6
  br i1 %182, label %183, label %191

183:                                              ; preds = %177
  %184 = load i8*, i8** %8, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 3
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 6
  br i1 %188, label %189, label %191

189:                                              ; preds = %183, %171
  %190 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %190, i32* %3, align 4
  br label %201

191:                                              ; preds = %183, %177
  br label %192

192:                                              ; preds = %191, %125, %119
  %193 = load i8*, i8** %8, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %8, align 8
  %195 = load i64, i64* %7, align 8
  %196 = add nsw i64 %195, 1
  store i64 %196, i64* %7, align 8
  br label %114

197:                                              ; preds = %114
  %198 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %199 = load i64, i64* %7, align 8
  %200 = call i32 @__archive_read_consume(%struct.archive_read* %198, i64 %199)
  br label %102

201:                                              ; preds = %189, %163, %143, %107, %52
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_4__*, i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @archive_decrypto_aes_ctr_release(i32*) #1

declare dso_local i32 @archive_hmac_sha1_cleanup(i32*) #1

declare dso_local i32 @__archive_read_reset_passphrase(%struct.archive_read*) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @zip_read_local_file_header(%struct.archive_read*, %struct.archive_entry*, %struct.zip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
