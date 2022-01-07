; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_write_hierarchy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_write_hierarchy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32, i32, i32, i32, i32, i32, i32, %struct.archive*, i32 }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"a \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"a %s\00", align 1
@AE_IFREG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsdtar*, %struct.archive*, i8*)* @write_hierarchy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_hierarchy(%struct.bsdtar* %0, %struct.archive* %1, i8* %2) #0 {
  %4 = alloca %struct.bsdtar*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.archive*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.bsdtar* %0, %struct.bsdtar** %4, align 8
  store %struct.archive* %1, %struct.archive** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %12 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %11, i32 0, i32 7
  %13 = load %struct.archive*, %struct.archive** %12, align 8
  store %struct.archive* %13, %struct.archive** %7, align 8
  store %struct.archive_entry* null, %struct.archive_entry** %8, align 8
  store %struct.archive_entry* null, %struct.archive_entry** %9, align 8
  %14 = load %struct.archive*, %struct.archive** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @archive_read_disk_open(%struct.archive* %14, i8* %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load %struct.archive*, %struct.archive** %7, align 8
  %22 = call i32 @archive_errno(%struct.archive* %21)
  %23 = load %struct.archive*, %struct.archive** %7, align 8
  %24 = call i32 @archive_error_string(%struct.archive* %23)
  %25 = call i32 @lafe_warnc(i32 %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %27 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %215

28:                                               ; preds = %3
  %29 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %30 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %29, i32 0, i32 1
  store i32 -1, i32* %30, align 4
  br label %31

31:                                               ; preds = %209, %153, %70, %28
  %32 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %33 = call i32 @archive_entry_free(%struct.archive_entry* %32)
  %34 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %34, %struct.archive_entry** %8, align 8
  %35 = load %struct.archive*, %struct.archive** %7, align 8
  %36 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %37 = call i32 @archive_read_next_header2(%struct.archive* %35, %struct.archive_entry* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @ARCHIVE_EOF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %210

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @ARCHIVE_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %73

46:                                               ; preds = %42
  %47 = load %struct.archive*, %struct.archive** %7, align 8
  %48 = call i32 @archive_errno(%struct.archive* %47)
  %49 = load %struct.archive*, %struct.archive** %7, align 8
  %50 = call i32 @archive_error_string(%struct.archive* %49)
  %51 = call i32 @lafe_warnc(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @ARCHIVE_FATAL, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @ARCHIVE_FAILED, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55, %46
  %60 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %61 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %63 = call i32 @archive_entry_free(%struct.archive_entry* %62)
  %64 = load %struct.archive*, %struct.archive** %7, align 8
  %65 = call i32 @archive_read_close(%struct.archive* %64)
  br label %215

66:                                               ; preds = %55
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @ARCHIVE_WARN, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %31

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %76 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %74
  %80 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %81 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %82 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @archive_entry_set_uid(%struct.archive_entry* %80, i32 %83)
  %85 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %86 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %79
  %90 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %91 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %92 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %91, i32 0, i32 7
  %93 = load %struct.archive*, %struct.archive** %92, align 8
  %94 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %95 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @archive_read_disk_uname(%struct.archive* %93, i32 %96)
  %98 = call i32 @archive_entry_set_uname(%struct.archive_entry* %90, i32 %97)
  br label %99

99:                                               ; preds = %89, %79
  br label %100

100:                                              ; preds = %99, %74
  %101 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %102 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %100
  %106 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %107 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %108 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @archive_entry_set_gid(%struct.archive_entry* %106, i32 %109)
  %111 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %112 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %105
  %116 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %117 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %118 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %117, i32 0, i32 7
  %119 = load %struct.archive*, %struct.archive** %118, align 8
  %120 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %121 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @archive_read_disk_gname(%struct.archive* %119, i32 %122)
  %124 = call i32 @archive_entry_set_gname(%struct.archive_entry* %116, i32 %123)
  br label %125

125:                                              ; preds = %115, %105
  br label %126

126:                                              ; preds = %125, %100
  %127 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %128 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %133 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %134 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @archive_entry_set_uname(%struct.archive_entry* %132, i32 %135)
  br label %137

137:                                              ; preds = %131, %126
  %138 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %139 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %144 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %145 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @archive_entry_set_gname(%struct.archive_entry* %143, i32 %146)
  br label %148

148:                                              ; preds = %142, %137
  %149 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %150 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %151 = call i64 @edit_pathname(%struct.bsdtar* %149, %struct.archive_entry* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %31

154:                                              ; preds = %148
  %155 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %156 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = icmp sgt i32 %157, 1
  br i1 %158, label %159, label %166

159:                                              ; preds = %154
  %160 = load i32, i32* @stderr, align 4
  %161 = call i32 (i32, i8*, ...) @safe_fprintf(i32 %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %162 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %163 = load i32, i32* @stderr, align 4
  %164 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %165 = call i32 @list_item_verbose(%struct.bsdtar* %162, i32 %163, %struct.archive_entry* %164)
  br label %177

166:                                              ; preds = %154
  %167 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %168 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load i32, i32* @stderr, align 4
  %173 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %174 = call i32 @archive_entry_pathname(%struct.archive_entry* %173)
  %175 = call i32 (i32, i8*, ...) @safe_fprintf(i32 %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %171, %166
  br label %177

177:                                              ; preds = %176, %159
  %178 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %179 = call i64 @archive_entry_filetype(%struct.archive_entry* %178)
  %180 = load i64, i64* @AE_IFREG, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %184 = call i32 @archive_entry_set_size(%struct.archive_entry* %183, i32 0)
  br label %185

185:                                              ; preds = %182, %177
  %186 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %187 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @archive_entry_linkify(i32 %188, %struct.archive_entry** %8, %struct.archive_entry** %9)
  br label %190

190:                                              ; preds = %193, %185
  %191 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %192 = icmp ne %struct.archive_entry* %191, null
  br i1 %192, label %193, label %201

193:                                              ; preds = %190
  %194 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %195 = load %struct.archive*, %struct.archive** %5, align 8
  %196 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %197 = call i32 @write_file(%struct.bsdtar* %194, %struct.archive* %195, %struct.archive_entry* %196)
  %198 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %199 = call i32 @archive_entry_free(%struct.archive_entry* %198)
  %200 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  store %struct.archive_entry* %200, %struct.archive_entry** %8, align 8
  store %struct.archive_entry* null, %struct.archive_entry** %9, align 8
  br label %190

201:                                              ; preds = %190
  %202 = load %struct.bsdtar*, %struct.bsdtar** %4, align 8
  %203 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load i32, i32* @stderr, align 4
  %208 = call i32 @fprintf(i32 %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %209

209:                                              ; preds = %206, %201
  br label %31

210:                                              ; preds = %41
  %211 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %212 = call i32 @archive_entry_free(%struct.archive_entry* %211)
  %213 = load %struct.archive*, %struct.archive** %7, align 8
  %214 = call i32 @archive_read_close(%struct.archive* %213)
  br label %215

215:                                              ; preds = %210, %59, %20
  ret void
}

declare dso_local i32 @archive_read_disk_open(%struct.archive*, i8*) #1

declare dso_local i32 @lafe_warnc(i32, i8*, i32) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_read_next_header2(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_uname(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_read_disk_uname(%struct.archive*, i32) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_gname(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_read_disk_gname(%struct.archive*, i32) #1

declare dso_local i64 @edit_pathname(%struct.bsdtar*, %struct.archive_entry*) #1

declare dso_local i32 @safe_fprintf(i32, i8*, ...) #1

declare dso_local i32 @list_item_verbose(%struct.bsdtar*, i32, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_linkify(i32, %struct.archive_entry**, %struct.archive_entry**) #1

declare dso_local i32 @write_file(%struct.bsdtar*, %struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
