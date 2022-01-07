; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_known_hosts_find_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-keygen.c_known_hosts_find_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostkey_foreach_line = type { i64, i64, i8*, i32, i32, i32, i32 }
%struct.known_hosts_ctx = type { i32, i8*, i32, i32 }

@print_bubblebabble = common dso_local global i64 0, align 8
@SSH_DIGEST_SHA1 = common dso_local global i32 0, align 4
@fingerprint_hash = common dso_local global i32 0, align 4
@SSH_FP_BUBBLEBABBLE = common dso_local global i32 0, align 4
@SSH_FP_DEFAULT = common dso_local global i32 0, align 4
@HKF_STATUS_MATCHED = common dso_local global i64 0, align 8
@delete_host = common dso_local global i64 0, align 8
@MRK_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@quiet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"# Host %s found: line %lu\0A\00", align 1
@find_host = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"# Host %s found: line %lu %s\0A\00", align 1
@MRK_CA = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"CA\00", align 1
@MRK_REVOKE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"REVOKED\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@hash_hosts = common dso_local global i64 0, align 8
@print_fingerprint = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"%s %s %s %s\0A\00", align 1
@HKF_STATUS_INVALID = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"%s:%lu: invalid line\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostkey_foreach_line*, i8*)* @known_hosts_find_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @known_hosts_find_delete(%struct.hostkey_foreach_line* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostkey_foreach_line*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.known_hosts_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.hostkey_foreach_line* %0, %struct.hostkey_foreach_line** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.known_hosts_ctx*
  store %struct.known_hosts_ctx* %11, %struct.known_hosts_ctx** %6, align 8
  %12 = load i64, i64* @print_bubblebabble, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @SSH_DIGEST_SHA1, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @fingerprint_hash, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %8, align 4
  %20 = load i64, i64* @print_bubblebabble, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @SSH_FP_BUBBLEBABBLE, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @SSH_FP_DEFAULT, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %7, align 4
  %28 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %29 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @HKF_STATUS_MATCHED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %140

33:                                               ; preds = %26
  %34 = load i64, i64* @delete_host, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %33
  %37 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %38 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MRK_NONE, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %47 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %48)
  br label %64

50:                                               ; preds = %36
  %51 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load i32, i32* @quiet, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %50
  %56 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %60 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %58, i32 %61)
  br label %63

63:                                               ; preds = %55, %50
  br label %64

64:                                               ; preds = %63, %42
  store i32 0, i32* %3, align 4
  br label %169

65:                                               ; preds = %33
  %66 = load i64, i64* @find_host, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %138

68:                                               ; preds = %65
  %69 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %70 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* @quiet, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %68
  %74 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %78 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %81 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MRK_CA, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %94

86:                                               ; preds = %73
  %87 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %88 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MRK_REVOKE, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  br label %94

94:                                               ; preds = %86, %85
  %95 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), %85 ], [ %93, %86 ]
  %96 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %76, i32 %79, i8* %95)
  br label %97

97:                                               ; preds = %94, %68
  %98 = load i64, i64* @hash_hosts, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %102 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %103 = call i32 @known_hosts_hash(%struct.hostkey_foreach_line* %101, %struct.known_hosts_ctx* %102)
  br label %137

104:                                              ; preds = %97
  %105 = load i64, i64* @print_fingerprint, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %104
  %108 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %109 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i8* @sshkey_fingerprint(i32 %110, i32 %111, i32 %112)
  store i8* %113, i8** %9, align 8
  %114 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %115 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %118 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @sshkey_type(i32 %119)
  %121 = load i8*, i8** %9, align 8
  %122 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %123 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @mprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %116, i32 %120, i8* %121, i32 %124)
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @free(i8* %126)
  br label %136

128:                                              ; preds = %104
  %129 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %130 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %133 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @fprintf(i32 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %128, %107
  br label %137

137:                                              ; preds = %136, %100
  store i32 0, i32* %3, align 4
  br label %169

138:                                              ; preds = %65
  br label %139

139:                                              ; preds = %138
  br label %168

140:                                              ; preds = %26
  %141 = load i64, i64* @delete_host, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %167

143:                                              ; preds = %140
  %144 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %145 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @HKF_STATUS_INVALID, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %143
  %150 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %151 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %150, i32 0, i32 2
  store i32 1, i32* %151, align 8
  %152 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %153 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %156 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @logit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %149, %143
  %160 = load %struct.known_hosts_ctx*, %struct.known_hosts_ctx** %6, align 8
  %161 = getelementptr inbounds %struct.known_hosts_ctx, %struct.known_hosts_ctx* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.hostkey_foreach_line*, %struct.hostkey_foreach_line** %4, align 8
  %164 = getelementptr inbounds %struct.hostkey_foreach_line, %struct.hostkey_foreach_line* %163, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @fprintf(i32 %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %159, %140
  br label %168

168:                                              ; preds = %167, %139
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %137, %64
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32, ...) #1

declare dso_local i32 @known_hosts_hash(%struct.hostkey_foreach_line*, %struct.known_hosts_ctx*) #1

declare dso_local i8* @sshkey_fingerprint(i32, i32, i32) #1

declare dso_local i32 @mprintf(i8*, i8*, i32, i8*, i32) #1

declare dso_local i32 @sshkey_type(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @logit(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
