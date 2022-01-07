; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_file_extra_owner.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_parse_file_extra_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.archive_entry = type { i32 }

@OWNER_MAXNAMELEN = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@OWNER_USER_NAME = common dso_local global i32 0, align 4
@OWNER_GROUP_NAME = common dso_local global i32 0, align 4
@OWNER_USER_UID = common dso_local global i32 0, align 4
@OWNER_GROUP_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*, i64*)* @parse_file_extra_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_file_extra_owner(%struct.archive_read* %0, %struct.archive_entry* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load i32, i32* @OWNER_MAXNAMELEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %22 = call i32 @read_var(%struct.archive_read* %21, i32* %8, i32* %9)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %25, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

26:                                               ; preds = %3
  %27 = load i64, i64* @ARCHIVE_OK, align 8
  %28 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @consume(%struct.archive_read* %28, i32 %29)
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %38, %36
  store i64 %39, i64* %37, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @OWNER_USER_NAME, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %90

44:                                               ; preds = %34
  %45 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %46 = call i32 @read_var_sized(%struct.archive_read* %45, i64* %12, i32* null)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

50:                                               ; preds = %44
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, 1
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, %52
  store i64 %55, i64* %53, align 8
  %56 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @read_ahead(%struct.archive_read* %56, i64 %57, i32** %15)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

62:                                               ; preds = %50
  %63 = load i64, i64* %12, align 8
  %64 = load i32, i32* @OWNER_MAXNAMELEN, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp uge i64 %63, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @OWNER_MAXNAMELEN, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %11, align 8
  br label %73

71:                                               ; preds = %62
  %72 = load i64, i64* %12, align 8
  store i64 %72, i64* %11, align 8
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i32*, i32** %15, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @memcpy(i8* %20, i32* %74, i64 %75)
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i8, i8* %20, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i64, i64* @ARCHIVE_OK, align 8
  %80 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %81 = load i64, i64* %12, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i64 @consume(%struct.archive_read* %80, i32 %82)
  %84 = icmp ne i64 %79, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %86, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

87:                                               ; preds = %73
  %88 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %89 = call i32 @archive_entry_set_uname(%struct.archive_entry* %88, i8* %20)
  br label %90

90:                                               ; preds = %87, %34
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @OWNER_GROUP_NAME, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %141

95:                                               ; preds = %90
  %96 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %97 = call i32 @read_var_sized(%struct.archive_read* %96, i64* %12, i32* null)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %100, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

101:                                              ; preds = %95
  %102 = load i64, i64* %12, align 8
  %103 = add i64 %102, 1
  %104 = load i64*, i64** %7, align 8
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %105, %103
  store i64 %106, i64* %104, align 8
  %107 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @read_ahead(%struct.archive_read* %107, i64 %108, i32** %15)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %101
  %112 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %112, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

113:                                              ; preds = %101
  %114 = load i64, i64* %12, align 8
  %115 = load i32, i32* @OWNER_MAXNAMELEN, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp uge i64 %114, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @OWNER_MAXNAMELEN, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  store i64 %121, i64* %11, align 8
  br label %124

122:                                              ; preds = %113
  %123 = load i64, i64* %12, align 8
  store i64 %123, i64* %11, align 8
  br label %124

124:                                              ; preds = %122, %118
  %125 = load i32*, i32** %15, align 8
  %126 = load i64, i64* %11, align 8
  %127 = call i32 @memcpy(i8* %20, i32* %125, i64 %126)
  %128 = load i64, i64* %11, align 8
  %129 = getelementptr inbounds i8, i8* %20, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i64, i64* @ARCHIVE_OK, align 8
  %131 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %132 = load i64, i64* %12, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i64 @consume(%struct.archive_read* %131, i32 %133)
  %135 = icmp ne i64 %130, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %124
  %137 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %137, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

138:                                              ; preds = %124
  %139 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %140 = call i32 @archive_entry_set_gname(%struct.archive_entry* %139, i8* %20)
  br label %141

141:                                              ; preds = %138, %90
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @OWNER_USER_UID, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %169

146:                                              ; preds = %141
  %147 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %148 = call i32 @read_var(%struct.archive_read* %147, i32* %10, i32* %9)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %146
  %151 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %151, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

152:                                              ; preds = %146
  %153 = load i64, i64* @ARCHIVE_OK, align 8
  %154 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i64 @consume(%struct.archive_read* %154, i32 %155)
  %157 = icmp ne i64 %153, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %159, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

160:                                              ; preds = %152
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64*, i64** %7, align 8
  %164 = load i64, i64* %163, align 8
  %165 = sub i64 %164, %162
  store i64 %165, i64* %163, align 8
  %166 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %167 = load i32, i32* %10, align 4
  %168 = call i32 @archive_entry_set_uid(%struct.archive_entry* %166, i32 %167)
  br label %169

169:                                              ; preds = %160, %141
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @OWNER_GROUP_GID, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %197

174:                                              ; preds = %169
  %175 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %176 = call i32 @read_var(%struct.archive_read* %175, i32* %10, i32* %9)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %179, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

180:                                              ; preds = %174
  %181 = load i64, i64* @ARCHIVE_OK, align 8
  %182 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i64 @consume(%struct.archive_read* %182, i32 %183)
  %185 = icmp ne i64 %181, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %187, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

188:                                              ; preds = %180
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64*, i64** %7, align 8
  %192 = load i64, i64* %191, align 8
  %193 = sub i64 %192, %190
  store i64 %193, i64* %191, align 8
  %194 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @archive_entry_set_gid(%struct.archive_entry* %194, i32 %195)
  br label %197

197:                                              ; preds = %188, %169
  %198 = load i64, i64* @ARCHIVE_OK, align 8
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %200

200:                                              ; preds = %197, %186, %178, %158, %150, %136, %111, %99, %85, %60, %48, %32, %24
  %201 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %201)
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_var(%struct.archive_read*, i32*, i32*) #2

declare dso_local i64 @consume(%struct.archive_read*, i32) #2

declare dso_local i32 @read_var_sized(%struct.archive_read*, i64*, i32*) #2

declare dso_local i32 @read_ahead(%struct.archive_read*, i64, i32**) #2

declare dso_local i32 @memcpy(i8*, i32*, i64) #2

declare dso_local i32 @archive_entry_set_uname(%struct.archive_entry*, i8*) #2

declare dso_local i32 @archive_entry_set_gname(%struct.archive_entry*, i8*) #2

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i32) #2

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
