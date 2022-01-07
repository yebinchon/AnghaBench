; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_header_Solaris_ACL.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_header_Solaris_ACL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }
%struct.archive_entry = type { i32 }
%struct.archive_entry_header_ustar = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Malformed Solaris ACL attribute (invalid digit)\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Malformed Solaris ACL attribute (count too large)\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_NFS4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"Malformed Solaris ACL attribute (unsupported type %o)\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Malformed Solaris ACL attribute (body overflow)\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"Can't allocate memory for ACL\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Malformed Solaris ACL attribute (unparsable)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i64*)* @header_Solaris_ACL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @header_Solaris_ACL(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.tar*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.archive_entry_header_ustar*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.tar* %1, %struct.tar** %8, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.archive_entry_header_ustar*
  store %struct.archive_entry_header_ustar* %20, %struct.archive_entry_header_ustar** %12, align 8
  %21 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %12, align 8
  %22 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @tar_atol(i32 %23, i32 4)
  store i64 %24, i64* %13, align 8
  %25 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %26 = load %struct.tar*, %struct.tar** %8, align 8
  %27 = load %struct.tar*, %struct.tar** %8, align 8
  %28 = getelementptr inbounds %struct.tar, %struct.tar* %27, i32 0, i32 2
  %29 = load i8*, i8** %10, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = call i32 @read_body_to_string(%struct.archive_read* %25, %struct.tar* %26, %struct.TYPE_3__* %28, i8* %29, i64* %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %6, align 4
  br label %219

37:                                               ; preds = %5
  %38 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %39 = load %struct.tar*, %struct.tar** %8, align 8
  %40 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %41 = load i64*, i64** %11, align 8
  %42 = call i32 @tar_read_header(%struct.archive_read* %38, %struct.tar* %39, %struct.archive_entry* %40, i64* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %37
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @ARCHIVE_WARN, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %6, align 4
  br label %219

52:                                               ; preds = %46, %37
  %53 = load %struct.tar*, %struct.tar** %8, align 8
  %54 = getelementptr inbounds %struct.tar, %struct.tar* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %17, align 8
  store i8* %56, i8** %18, align 8
  store i32 0, i32* %16, align 4
  br label %57

57:                                               ; preds = %103, %52
  %58 = load i8*, i8** %18, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i8*, i8** %18, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = icmp ult i8* %63, %66
  br label %68

68:                                               ; preds = %62, %57
  %69 = phi i1 [ false, %57 ], [ %67, %62 ]
  br i1 %69, label %70, label %106

70:                                               ; preds = %68
  %71 = load i8*, i8** %18, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp slt i32 %73, 48
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %18, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sgt i32 %78, 55
  br i1 %79, label %80, label %86

80:                                               ; preds = %75, %70
  %81 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %82 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %81, i32 0, i32 0
  %83 = load i64, i64* @ARCHIVE_ERRNO_MISC, align 8
  %84 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %82, i64 %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %85, i32* %6, align 4
  br label %219

86:                                               ; preds = %75
  %87 = load i32, i32* %16, align 4
  %88 = shl i32 %87, 3
  store i32 %88, i32* %16, align 4
  %89 = load i8*, i8** %18, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = sub nsw i32 %91, 48
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp sgt i32 %95, 16777215
  br i1 %96, label %97, label %103

97:                                               ; preds = %86
  %98 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %99 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %98, i32 0, i32 0
  %100 = load i64, i64* @ARCHIVE_ERRNO_MISC, align 8
  %101 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %99, i64 %100, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %102, i32* %6, align 4
  br label %219

103:                                              ; preds = %86
  %104 = load i8*, i8** %18, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %18, align 8
  br label %57

106:                                              ; preds = %68
  %107 = load i32, i32* %16, align 4
  %108 = and i32 %107, -262144
  switch i32 %108, label %113 [
    i32 262144, label %109
    i32 786432, label %111
  ]

109:                                              ; preds = %106
  %110 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  store i32 %110, i32* %15, align 4
  br label %120

111:                                              ; preds = %106
  %112 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  store i32 %112, i32* %15, align 4
  br label %120

113:                                              ; preds = %106
  %114 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %115 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %114, i32 0, i32 0
  %116 = load i64, i64* @ARCHIVE_ERRNO_MISC, align 8
  %117 = load i32, i32* %16, align 4
  %118 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %115, i64 %116, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %119, i32* %6, align 4
  br label %219

120:                                              ; preds = %111, %109
  %121 = load i8*, i8** %18, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %18, align 8
  %123 = load i8*, i8** %18, align 8
  %124 = load i8*, i8** %17, align 8
  %125 = load i64, i64* %13, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = icmp uge i8* %123, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %120
  %129 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %130 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %129, i32 0, i32 0
  %131 = load i64, i64* @ARCHIVE_ERRNO_MISC, align 8
  %132 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %130, i64 %131, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %133 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %133, i32* %6, align 4
  br label %219

134:                                              ; preds = %120
  %135 = load i8*, i8** %18, align 8
  %136 = load i8*, i8** %17, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = load i64, i64* %13, align 8
  %141 = sub i64 %140, %139
  store i64 %141, i64* %13, align 8
  %142 = load i8*, i8** %18, align 8
  store i8* %142, i8** %17, align 8
  br label %143

143:                                              ; preds = %156, %134
  %144 = load i8*, i8** %18, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load i8*, i8** %18, align 8
  %150 = load i8*, i8** %17, align 8
  %151 = load i64, i64* %13, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = icmp ult i8* %149, %152
  br label %154

154:                                              ; preds = %148, %143
  %155 = phi i1 [ false, %143 ], [ %153, %148 ]
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = load i8*, i8** %18, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %18, align 8
  br label %143

159:                                              ; preds = %154
  %160 = load %struct.tar*, %struct.tar** %8, align 8
  %161 = getelementptr inbounds %struct.tar, %struct.tar* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = icmp eq i32* %162, null
  br i1 %163, label %164, label %177

164:                                              ; preds = %159
  %165 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %166 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %165, i32 0, i32 0
  %167 = call i32* @archive_string_conversion_from_charset(i32* %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %168 = load %struct.tar*, %struct.tar** %8, align 8
  %169 = getelementptr inbounds %struct.tar, %struct.tar* %168, i32 0, i32 0
  store i32* %167, i32** %169, align 8
  %170 = load %struct.tar*, %struct.tar** %8, align 8
  %171 = getelementptr inbounds %struct.tar, %struct.tar* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %164
  %175 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %175, i32* %6, align 4
  br label %219

176:                                              ; preds = %164
  br label %177

177:                                              ; preds = %176, %159
  %178 = load %struct.tar*, %struct.tar** %8, align 8
  %179 = getelementptr inbounds %struct.tar, %struct.tar* %178, i32 0, i32 1
  %180 = load i8*, i8** %17, align 8
  %181 = load i8*, i8** %18, align 8
  %182 = load i8*, i8** %17, align 8
  %183 = ptrtoint i8* %181 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = trunc i64 %185 to i32
  %187 = call i32 @archive_strncpy(%struct.TYPE_4__* %179, i8* %180, i32 %186)
  %188 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %189 = call i32 @archive_entry_acl(%struct.archive_entry* %188)
  %190 = load %struct.tar*, %struct.tar** %8, align 8
  %191 = getelementptr inbounds %struct.tar, %struct.tar* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %15, align 4
  %195 = load %struct.tar*, %struct.tar** %8, align 8
  %196 = getelementptr inbounds %struct.tar, %struct.tar* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = call i32 @archive_acl_from_text_l(i32 %189, i32 %193, i32 %194, i32* %197)
  store i32 %198, i32* %14, align 4
  %199 = load i32, i32* %14, align 4
  %200 = load i32, i32* @ARCHIVE_OK, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %177
  %203 = load i64, i64* @errno, align 8
  %204 = load i64, i64* @ENOMEM, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %208 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %207, i32 0, i32 0
  %209 = load i64, i64* @ENOMEM, align 8
  %210 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %208, i64 %209, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %216

211:                                              ; preds = %202
  %212 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %213 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %212, i32 0, i32 0
  %214 = load i64, i64* @ARCHIVE_ERRNO_MISC, align 8
  %215 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %213, i64 %214, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %216

216:                                              ; preds = %211, %206
  br label %217

217:                                              ; preds = %216, %177
  %218 = load i32, i32* %14, align 4
  store i32 %218, i32* %6, align 4
  br label %219

219:                                              ; preds = %217, %174, %128, %113, %97, %80, %50, %35
  %220 = load i32, i32* %6, align 4
  ret i32 %220
}

declare dso_local i64 @tar_atol(i32, i32) #1

declare dso_local i32 @read_body_to_string(%struct.archive_read*, %struct.tar*, %struct.TYPE_3__*, i8*, i64*) #1

declare dso_local i32 @tar_read_header(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i64*) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*, ...) #1

declare dso_local i32* @archive_string_conversion_from_charset(i32*, i8*, i32) #1

declare dso_local i32 @archive_strncpy(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @archive_acl_from_text_l(i32, i32, i32, i32*) #1

declare dso_local i32 @archive_entry_acl(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
