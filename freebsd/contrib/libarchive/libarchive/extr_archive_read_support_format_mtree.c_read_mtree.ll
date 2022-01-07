; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_read_mtree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_read_mtree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.mtree = type { i8*, i32, i32, i32 }
%struct.mtree_option = type { i32 }
%struct.mtree_entry = type { i32 }

@ARCHIVE_FORMAT_MTREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mtree\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"/set\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"/unset\00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Can't parse line %ju\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.mtree*)* @read_mtree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mtree(%struct.archive_read* %0, %struct.mtree* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.mtree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mtree_option*, align 8
  %11 = alloca %struct.mtree_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.mtree* %1, %struct.mtree** %5, align 8
  %14 = load i32, i32* @ARCHIVE_FORMAT_MTREE, align 4
  %15 = load %struct.mtree*, %struct.mtree** %5, align 8
  %16 = getelementptr inbounds %struct.mtree, %struct.mtree* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.mtree*, %struct.mtree** %5, align 8
  %18 = getelementptr inbounds %struct.mtree, %struct.mtree* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  store %struct.mtree_option* null, %struct.mtree_option** %10, align 8
  store %struct.mtree_entry* null, %struct.mtree_entry** %11, align 8
  %19 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %20 = call i32 @detect_form(%struct.archive_read* %19, i32* %13)
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %182, %2
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %24 = load %struct.mtree*, %struct.mtree** %5, align 8
  %25 = call i32 @readline(%struct.archive_read* %23, %struct.mtree* %24, i8** %8, i32 65536)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.mtree*, %struct.mtree** %5, align 8
  %30 = getelementptr inbounds %struct.mtree, %struct.mtree* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mtree*, %struct.mtree** %5, align 8
  %33 = getelementptr inbounds %struct.mtree, %struct.mtree* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.mtree_option*, %struct.mtree_option** %10, align 8
  %35 = call i32 @free_options(%struct.mtree_option* %34)
  %36 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %36, i32* %3, align 4
  br label %194

37:                                               ; preds = %21
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.mtree_option*, %struct.mtree_option** %10, align 8
  %42 = call i32 @free_options(%struct.mtree_option* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %194

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 32
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 9
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ true, %45 ], [ %54, %50 ]
  br i1 %56, label %57, label %62

57:                                               ; preds = %55
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %6, align 4
  br label %45

62:                                               ; preds = %55
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 35
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %182

68:                                               ; preds = %62
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 13
  br i1 %72, label %83, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %8, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 10
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** %8, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %73, %68
  br label %182

84:                                               ; preds = %78
  %85 = load i8*, i8** %8, align 8
  store i8* %85, i8** %9, align 8
  br label %86

86:                                               ; preds = %102, %84
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = getelementptr inbounds i8, i8* %91, i64 -1
  %93 = icmp ult i8* %87, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %86
  %95 = load i8*, i8** %9, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @isprint(i8 signext %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %100, i32* %12, align 4
  br label %105

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  br label %86

105:                                              ; preds = %99, %86
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @ARCHIVE_OK, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %185

110:                                              ; preds = %105
  %111 = load i8*, i8** %8, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 47
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %117 = load %struct.mtree*, %struct.mtree** %5, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @process_add_entry(%struct.archive_read* %116, %struct.mtree* %117, %struct.mtree_option** %10, i8* %118, i32 %119, %struct.mtree_entry** %11, i32 %120)
  store i32 %121, i32* %12, align 4
  br label %173

122:                                              ; preds = %110
  %123 = load i32, i32* %6, align 4
  %124 = icmp sgt i32 %123, 4
  br i1 %124, label %125, label %146

125:                                              ; preds = %122
  %126 = load i8*, i8** %8, align 8
  %127 = call i64 @strncmp(i8* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %146

129:                                              ; preds = %125
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 4
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 32
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 4
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 9
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %185

142:                                              ; preds = %135, %129
  %143 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 @process_global_set(%struct.archive_read* %143, %struct.mtree_option** %10, i8* %144)
  store i32 %145, i32* %12, align 4
  br label %172

146:                                              ; preds = %125, %122
  %147 = load i32, i32* %6, align 4
  %148 = icmp sgt i32 %147, 6
  br i1 %148, label %149, label %170

149:                                              ; preds = %146
  %150 = load i8*, i8** %8, align 8
  %151 = call i64 @strncmp(i8* %150, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %149
  %154 = load i8*, i8** %8, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 6
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 32
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load i8*, i8** %8, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 6
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp ne i32 %163, 9
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %185

166:                                              ; preds = %159, %153
  %167 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %168 = load i8*, i8** %8, align 8
  %169 = call i32 @process_global_unset(%struct.archive_read* %167, %struct.mtree_option** %10, i8* %168)
  store i32 %169, i32* %12, align 4
  br label %171

170:                                              ; preds = %149, %146
  br label %185

171:                                              ; preds = %166
  br label %172

172:                                              ; preds = %171, %142
  br label %173

173:                                              ; preds = %172, %115
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* @ARCHIVE_OK, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load %struct.mtree_option*, %struct.mtree_option** %10, align 8
  %179 = call i32 @free_options(%struct.mtree_option* %178)
  %180 = load i32, i32* %12, align 4
  store i32 %180, i32* %3, align 4
  br label %194

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %83, %67
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %21

185:                                              ; preds = %170, %165, %141, %109
  %186 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %187 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %186, i32 0, i32 0
  %188 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i32 @archive_set_error(i32* %187, i32 %188, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %189)
  %191 = load %struct.mtree_option*, %struct.mtree_option** %10, align 8
  %192 = call i32 @free_options(%struct.mtree_option* %191)
  %193 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %193, i32* %3, align 4
  br label %194

194:                                              ; preds = %185, %177, %40, %28
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @detect_form(%struct.archive_read*, i32*) #1

declare dso_local i32 @readline(%struct.archive_read*, %struct.mtree*, i8**, i32) #1

declare dso_local i32 @free_options(%struct.mtree_option*) #1

declare dso_local i32 @isprint(i8 signext) #1

declare dso_local i32 @process_add_entry(%struct.archive_read*, %struct.mtree*, %struct.mtree_option**, i8*, i32, %struct.mtree_entry**, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @process_global_set(%struct.archive_read*, %struct.mtree_option**, i8*) #1

declare dso_local i32 @process_global_unset(%struct.archive_read*, %struct.mtree_option**, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
