; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_view.c_cmd_view.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/smbfs/smbutil/extr_view.c_cmd_view.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.smb_share_info_1 = type { i8*, i32, i32 }

@SMBL_VC = common dso_local global i32 0, align 4
@SMB_ST_ANY = common dso_local global i32 0, align 4
@smb_rc = common dso_local global i64 0, align 8
@STDPARAM_OPT = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"IPC$\00", align 1
@SMBL_SHARE = common dso_local global i32 0, align 4
@SMBLK_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not login to server %s\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Share        Type       Comment\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"-------------------------------\0A\00", align 1
@SMB_ERROR_MORE_DATA = common dso_local global i32 0, align 4
@SMB_RAP_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"unable to list resources\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%-12s %-10s %s\0A\00", align 1
@shtype = common dso_local global i8** null, align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"\0A%d shares listed from %d available\0A\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_view(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.smb_ctx, align 4
  %6 = alloca %struct.smb_ctx*, align 8
  %7 = alloca %struct.smb_share_info_1*, align 8
  %8 = alloca %struct.smb_share_info_1*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store %struct.smb_ctx* %5, %struct.smb_ctx** %6, align 8
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @view_usage()
  br label %22

22:                                               ; preds = %20, %2
  %23 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i8**, i8*** %4, align 8
  %26 = load i32, i32* @SMBL_VC, align 4
  %27 = load i32, i32* @SMBL_VC, align 4
  %28 = load i32, i32* @SMB_ST_ANY, align 4
  %29 = call i64 @smb_ctx_init(%struct.smb_ctx* %23, i32 %24, i8** %25, i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %22
  %34 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %35 = call i64 @smb_ctx_readrc(%struct.smb_ctx* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %33
  %40 = load i64, i64* @smb_rc, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* @smb_rc, align 8
  %44 = call i32 @rc_close(i64 %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %67, %45
  %47 = load i32, i32* %3, align 4
  %48 = load i8**, i8*** %4, align 8
  %49 = load i32, i32* @STDPARAM_OPT, align 4
  %50 = call i32 @getopt(i32 %47, i8** %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @EOF, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = load i32, i32* %13, align 4
  switch i32 %54, label %65 [
    i32 128, label %55
  ]

55:                                               ; preds = %53
  %56 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @optarg, align 4
  %59 = call i32 @smb_ctx_opt(%struct.smb_ctx* %56, i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %55
  br label %67

65:                                               ; preds = %53
  %66 = call i32 (...) @view_usage()
  br label %67

67:                                               ; preds = %65, %64
  br label %46

68:                                               ; preds = %46
  %69 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %70 = load i32, i32* @SMB_ST_ANY, align 4
  %71 = call i32 @smb_ctx_setshare(%struct.smb_ctx* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %73 = call i64 @smb_ctx_resolve(%struct.smb_ctx* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 @exit(i32 1) #3
  unreachable

77:                                               ; preds = %68
  %78 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %79 = load i32, i32* @SMBL_SHARE, align 4
  %80 = load i32, i32* @SMBLK_CREATE, align 4
  %81 = call i32 @smb_ctx_lookup(%struct.smb_ctx* %78, i32 %79, i32 %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %77
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %87 = getelementptr inbounds %struct.smb_ctx, %struct.smb_ctx* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %89)
  %91 = call i32 @exit(i32 1) #3
  unreachable

92:                                               ; preds = %77
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 65504, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call %struct.smb_share_info_1* @malloc(i32 %95)
  store %struct.smb_share_info_1* %96, %struct.smb_share_info_1** %7, align 8
  %97 = load %struct.smb_ctx*, %struct.smb_ctx** %6, align 8
  %98 = load %struct.smb_share_info_1*, %struct.smb_share_info_1** %7, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @smb_rap_NetShareEnum(%struct.smb_ctx* %97, i32 1, %struct.smb_share_info_1* %98, i32 %99, i32* %16, i32* %17)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %92
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @SMB_ERROR_MORE_DATA, align 4
  %106 = load i32, i32* @SMB_RAP_ERROR, align 4
  %107 = or i32 %105, %106
  %108 = icmp ne i32 %104, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* %12, align 4
  %111 = call i32 (i8*, i32, ...) @smb_error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = call i32 @exit(i32 1) #3
  unreachable

113:                                              ; preds = %103, %92
  %114 = load %struct.smb_share_info_1*, %struct.smb_share_info_1** %7, align 8
  store %struct.smb_share_info_1* %114, %struct.smb_share_info_1** %8, align 8
  store i32 0, i32* %15, align 4
  br label %115

115:                                              ; preds = %153, %113
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %16, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %158

119:                                              ; preds = %115
  %120 = load %struct.smb_share_info_1*, %struct.smb_share_info_1** %8, align 8
  %121 = getelementptr inbounds %struct.smb_share_info_1, %struct.smb_share_info_1* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le16toh(i32 %122)
  store i32 %123, i32* %11, align 4
  %124 = load %struct.smb_share_info_1*, %struct.smb_share_info_1** %8, align 8
  %125 = getelementptr inbounds %struct.smb_share_info_1, %struct.smb_share_info_1* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @le32toh(i32 %126)
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = and i32 %128, 65535
  store i32 %129, i32* %10, align 4
  %130 = load %struct.smb_share_info_1*, %struct.smb_share_info_1** %7, align 8
  %131 = bitcast %struct.smb_share_info_1* %130 to i8*
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  store i8* %134, i8** %9, align 8
  %135 = load %struct.smb_share_info_1*, %struct.smb_share_info_1** %8, align 8
  %136 = getelementptr inbounds %struct.smb_share_info_1, %struct.smb_share_info_1* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = load i8**, i8*** @shtype, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i64 @min(i32 %139, i32 0)
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %119
  %146 = load i8*, i8** %9, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = call i8* @nls_str_toloc(i8* %146, i8* %147)
  br label %150

149:                                              ; preds = %119
  br label %150

150:                                              ; preds = %149, %145
  %151 = phi i8* [ %148, %145 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %149 ]
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %137, i8* %142, i8* %151)
  br label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  %156 = load %struct.smb_share_info_1*, %struct.smb_share_info_1** %8, align 8
  %157 = getelementptr inbounds %struct.smb_share_info_1, %struct.smb_share_info_1* %156, i32 1
  store %struct.smb_share_info_1* %157, %struct.smb_share_info_1** %8, align 8
  br label %115

158:                                              ; preds = %115
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %17, align 4
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load %struct.smb_share_info_1*, %struct.smb_share_info_1** %7, align 8
  %163 = call i32 @free(%struct.smb_share_info_1* %162)
  ret i32 0
}

declare dso_local i32 @view_usage(...) #1

declare dso_local i64 @smb_ctx_init(%struct.smb_ctx*, i32, i8**, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @smb_ctx_readrc(%struct.smb_ctx*) #1

declare dso_local i32 @rc_close(i64) #1

declare dso_local i32 @getopt(i32, i8**, i32) #1

declare dso_local i32 @smb_ctx_opt(%struct.smb_ctx*, i32, i32) #1

declare dso_local i32 @smb_ctx_setshare(%struct.smb_ctx*, i8*, i32) #1

declare dso_local i64 @smb_ctx_resolve(%struct.smb_ctx*) #1

declare dso_local i32 @smb_ctx_lookup(%struct.smb_ctx*, i32, i32) #1

declare dso_local i32 @smb_error(i8*, i32, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.smb_share_info_1* @malloc(i32) #1

declare dso_local i32 @smb_rap_NetShareEnum(%struct.smb_ctx*, i32, %struct.smb_share_info_1*, i32, i32*, i32*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i8* @nls_str_toloc(i8*, i8*) #1

declare dso_local i32 @free(%struct.smb_share_info_1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
