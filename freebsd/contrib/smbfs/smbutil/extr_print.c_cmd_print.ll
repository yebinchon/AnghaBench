; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_print.c_cmd_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_print.c_cmd_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@SMBL_SHARE = common dso_local global i32 0, align 4
@SMB_ST_PRINTER = common dso_local global i32 0, align 4
@smb_rc = common dso_local global i64 0, align 8
@STDPARAM_OPT = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"could not open file %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SMBLK_CREATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"could not login to server %s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s_%s_%s\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"could not open print job\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"error reading input file\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"error writing spool file\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"incomplete write to spool file\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"an error while closing spool file\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_print(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.smb_ctx, align 8
  %6 = alloca %struct.smb_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [8192 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store %struct.smb_ctx* %5, %struct.smb_ctx** %6, align 8
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i32 (...) @view_usage()
  br label %21

21:                                               ; preds = %19, %2
  %22 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i8**, i8*** %4, align 8
  %25 = load i32, i32* @SMBL_SHARE, align 4
  %26 = load i32, i32* @SMBL_SHARE, align 4
  %27 = load i32, i32* @SMB_ST_PRINTER, align 4
  %28 = call i64 @smb_ctx_init(%struct.smb_ctx* %22, i32 %23, i8** %24, i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %21
  %33 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %34 = call i64 @smb_ctx_readrc(%struct.smb_ctx* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %32
  %39 = load i64, i64* @smb_rc, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i64, i64* @smb_rc, align 8
  %43 = call i32 @rc_close(i64 %42)
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %66, %44
  %46 = load i32, i32* %3, align 4
  %47 = load i8**, i8*** %4, align 8
  %48 = load i32, i32* @STDPARAM_OPT, align 4
  %49 = call i32 @getopt(i32 %46, i8** %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* @EOF, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  switch i32 %53, label %64 [
    i32 128, label %54
  ]

54:                                               ; preds = %52
  %55 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @optarg, align 4
  %58 = call i32 @smb_ctx_opt(%struct.smb_ctx* %55, i32 %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %54
  br label %66

64:                                               ; preds = %52
  %65 = call i32 (...) @view_usage()
  br label %66

66:                                               ; preds = %64, %63
  br label %45

67:                                               ; preds = %45
  %68 = load i32, i32* @optind, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %3, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (...) @print_usage()
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i8**, i8*** %4, align 8
  %76 = load i32, i32* @optind, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  %80 = load i8*, i8** %79, align 8
  store i8* %80, i8** %10, align 8
  %81 = load i8*, i8** %10, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  store i32 0, i32* %15, align 4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %97

85:                                               ; preds = %74
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* @O_RDONLY, align 4
  %88 = call i32 @open(i8* %86, i32 %87, i32 0)
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load i32, i32* @errno, align 4
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %92, i8* %93)
  %95 = call i32 @exit(i32 1) #3
  unreachable

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %84
  %98 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %99 = call i64 @smb_ctx_resolve(%struct.smb_ctx* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = call i32 @exit(i32 1) #3
  unreachable

103:                                              ; preds = %97
  %104 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %105 = load i32, i32* @SMBL_SHARE, align 4
  %106 = load i32, i32* @SMBLK_CREATE, align 4
  %107 = call i32 @smb_ctx_lookup(%struct.smb_ctx* %104, i32 %105, i32 %106)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %113 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %111, i8* %115)
  %117 = call i32 @exit(i32 1) #3
  unreachable

118:                                              ; preds = %103
  %119 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %120 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %121 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %125 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = call i32 @snprintf(i8* %119, i32 256, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %123, i8* %127, i8* %128)
  %130 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %132 = call i32 @smb_smb_open_print_file(%struct.smb_ctx* %130, i32 0, i32 1, i8* %131, i32* %7)
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %118
  %136 = load i32, i32* %12, align 4
  %137 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %136)
  %138 = call i32 @exit(i32 1) #3
  unreachable

139:                                              ; preds = %118
  store i64 0, i64* %8, align 8
  store i32 0, i32* %12, align 4
  br label %140

140:                                              ; preds = %174, %139
  %141 = load i32, i32* %15, align 4
  %142 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  %143 = call i32 @read(i32 %141, i8* %142, i32 8192)
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %16, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %179

147:                                              ; preds = %140
  %148 = load i32, i32* %16, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %147
  %151 = load i32, i32* @errno, align 4
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %152)
  br label %179

154:                                              ; preds = %147
  %155 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %156 = load i32, i32* %7, align 4
  %157 = load i64, i64* %8, align 8
  %158 = load i32, i32* %16, align 4
  %159 = getelementptr inbounds [8192 x i8], [8192 x i8]* %9, i64 0, i64 0
  %160 = call i32 @smb_write(%struct.smb_ctx* %155, i32 %156, i64 %157, i32 %158, i8* %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %154
  %164 = load i32, i32* @errno, align 4
  store i32 %164, i32* %12, align 4
  %165 = load i32, i32* %12, align 4
  %166 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %165)
  br label %179

167:                                              ; preds = %154
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 0)
  %173 = load i32, i32* @EIO, align 4
  store i32 %173, i32* %12, align 4
  br label %179

174:                                              ; preds = %167
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %8, align 8
  %178 = add nsw i64 %177, %176
  store i64 %178, i64* %8, align 8
  br label %140

179:                                              ; preds = %171, %163, %150, %146
  %180 = load i32, i32* %15, align 4
  %181 = call i32 @close(i32 %180)
  %182 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @smb_smb_close_print_file(%struct.smb_ctx* %182, i32 %183)
  store i32 %184, i32* %12, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %179
  %188 = load i32, i32* %12, align 4
  %189 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %187, %179
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 1, i32 0
  ret i32 %194
}

declare dso_local i32 @view_usage(...) #1

declare dso_local i64 @smb_ctx_init(%struct.smb_ctx*, i32, i8**, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @smb_ctx_readrc(%struct.smb_ctx*) #1

declare dso_local i32 @rc_close(i64) #1

declare dso_local i32 @getopt(i32, i8**, i32) #1

declare dso_local i32 @smb_ctx_opt(%struct.smb_ctx*, i32, i32) #1

declare dso_local i32 @print_usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @smb_error(i8*, i32, ...) #1

declare dso_local i64 @smb_ctx_resolve(%struct.smb_ctx*) #1

declare dso_local i32 @smb_ctx_lookup(%struct.smb_ctx*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @smb_smb_open_print_file(%struct.smb_ctx*, i32, i32, i8*, i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @smb_write(%struct.smb_ctx*, i32, i64, i32, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @smb_smb_close_print_file(%struct.smb_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
