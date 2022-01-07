; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_gencode.c_gen_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32 }
%struct.TYPE_6__ = type { i32 }

@Q_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@ETHERTYPE_REVARP = common dso_local global i32 0, align 4
@ETHERTYPE_ARP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"'tcp' modifier applied to %s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"'sctp' modifier applied to %s\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"'udp' modifier applied to %s\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"'icmp' modifier applied to %s\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"'igmp' modifier applied to %s\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"'igrp' modifier applied to %s\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"'pim' modifier applied to %s\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"'vrrp' modifier applied to %s\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"'carp' modifier applied to %s\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"ATALK host filtering not implemented\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"AARP host filtering not implemented\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"SCA host filtering not implemented\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"LAT host filtering not implemented\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"MOPDL host filtering not implemented\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"MOPRC host filtering not implemented\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"'ip6' modifier applied to ip host\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"'icmp6' modifier applied to %s\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"'ah' modifier applied to %s\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"'esp' modifier applied to %s\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"ISO host filtering not implemented\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"'esis' modifier applied to %s\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"'isis' modifier applied to %s\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"'clnp' modifier applied to %s\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"'stp' modifier applied to %s\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"IPX host filtering not implemented\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"'netbeui' modifier applied to %s\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"'radio' modifier applied to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.block* (%struct.TYPE_6__*, i32, i32, i32, i32, i32)* @gen_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.block* @gen_host(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.block*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.block*, align 8
  %15 = alloca %struct.block*, align 8
  %16 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @Q_NET, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %22

21:                                               ; preds = %6
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %11, align 4
  switch i32 %23, label %181 [
    i32 152, label %24
    i32 145, label %56
    i32 134, label %63
    i32 157, label %70
    i32 130, label %77
    i32 132, label %81
    i32 129, label %85
    i32 149, label %89
    i32 147, label %93
    i32 146, label %97
    i32 136, label %101
    i32 128, label %105
    i32 155, label %109
    i32 156, label %113
    i32 159, label %116
    i32 153, label %119
    i32 133, label %124
    i32 140, label %127
    i32 139, label %130
    i32 138, label %133
    i32 144, label %136
    i32 148, label %139
    i32 158, label %143
    i32 150, label %147
    i32 141, label %151
    i32 151, label %154
    i32 142, label %158
    i32 154, label %162
    i32 131, label %166
    i32 143, label %170
    i32 137, label %173
    i32 135, label %177
  ]

24:                                               ; preds = %22
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call %struct.block* @gen_host(%struct.TYPE_6__* %25, i32 %26, i32 %27, i32 145, i32 %28, i32 %29)
  store %struct.block* %30, %struct.block** %14, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %24
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = call %struct.block* @gen_host(%struct.TYPE_6__* %36, i32 %37, i32 %38, i32 157, i32 %39, i32 %40)
  store %struct.block* %41, %struct.block** %15, align 8
  %42 = load %struct.block*, %struct.block** %14, align 8
  %43 = load %struct.block*, %struct.block** %15, align 8
  %44 = call i32 @gen_or(%struct.block* %42, %struct.block* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call %struct.block* @gen_host(%struct.TYPE_6__* %45, i32 %46, i32 %47, i32 134, i32 %48, i32 %49)
  store %struct.block* %50, %struct.block** %14, align 8
  %51 = load %struct.block*, %struct.block** %15, align 8
  %52 = load %struct.block*, %struct.block** %14, align 8
  %53 = call i32 @gen_or(%struct.block* %51, %struct.block* %52)
  br label %54

54:                                               ; preds = %35, %24
  %55 = load %struct.block*, %struct.block** %14, align 8
  store %struct.block* %55, %struct.block** %7, align 8
  br label %183

56:                                               ; preds = %22
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @ETHERTYPE_IP, align 4
  %62 = call %struct.block* @gen_hostop(%struct.TYPE_6__* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 12, i32 16)
  store %struct.block* %62, %struct.block** %7, align 8
  br label %183

63:                                               ; preds = %22
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* @ETHERTYPE_REVARP, align 4
  %69 = call %struct.block* @gen_hostop(%struct.TYPE_6__* %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 14, i32 24)
  store %struct.block* %69, %struct.block** %7, align 8
  br label %183

70:                                               ; preds = %22
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @ETHERTYPE_ARP, align 4
  %76 = call %struct.block* @gen_hostop(%struct.TYPE_6__* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 14, i32 24)
  store %struct.block* %76, %struct.block** %7, align 8
  br label %183

77:                                               ; preds = %22
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = load i8*, i8** %16, align 8
  %80 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %22, %77
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = load i8*, i8** %16, align 8
  %84 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %22, %81
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %87 = load i8*, i8** %16, align 8
  %88 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %22, %85
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %22, %89
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = load i8*, i8** %16, align 8
  %96 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %95)
  br label %97

97:                                               ; preds = %22, %93
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %98, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %22, %97
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %22, %101
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %106, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %22, %105
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %111 = load i8*, i8** %16, align 8
  %112 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %22, %109
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %115 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %114, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  br label %116

116:                                              ; preds = %22, %113
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %118 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  br label %119

119:                                              ; preds = %22, %116
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %12, align 4
  %123 = call %struct.block* @gen_dnhostop(%struct.TYPE_6__* %120, i32 %121, i32 %122)
  store %struct.block* %123, %struct.block** %7, align 8
  br label %183

124:                                              ; preds = %22
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %126 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  br label %127

127:                                              ; preds = %22, %124
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %129 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %130

130:                                              ; preds = %22, %127
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %132 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %131, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  br label %133

133:                                              ; preds = %22, %130
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %135 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %134, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0))
  br label %136

136:                                              ; preds = %22, %133
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %138 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  br label %139

139:                                              ; preds = %22, %136
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %141 = load i8*, i8** %16, align 8
  %142 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %140, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %22, %139
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %145 = load i8*, i8** %16, align 8
  %146 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %22, %143
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %149 = load i8*, i8** %16, align 8
  %150 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %148, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %22, %147
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %153 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0))
  br label %154

154:                                              ; preds = %22, %151
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %156 = load i8*, i8** %16, align 8
  %157 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %22, %154
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %160 = load i8*, i8** %16, align 8
  %161 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %159, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %22, %158
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %164 = load i8*, i8** %16, align 8
  %165 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %22, %162
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %168 = load i8*, i8** %16, align 8
  %169 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %167, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0), i8* %168)
  br label %170

170:                                              ; preds = %22, %166
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %172 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %171, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0))
  br label %173

173:                                              ; preds = %22, %170
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %175 = load i8*, i8** %16, align 8
  %176 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %174, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i8* %175)
  br label %177

177:                                              ; preds = %22, %173
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %179 = load i8*, i8** %16, align 8
  %180 = call i32 (%struct.TYPE_6__*, i8*, ...) @bpf_error(%struct.TYPE_6__* %178, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %22, %177
  %182 = call i32 (...) @abort() #3
  unreachable

183:                                              ; preds = %119, %70, %63, %56, %54
  %184 = load %struct.block*, %struct.block** %7, align 8
  ret %struct.block* %184
}

declare dso_local i32 @gen_or(%struct.block*, %struct.block*) #1

declare dso_local %struct.block* @gen_hostop(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bpf_error(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local %struct.block* @gen_dnhostop(%struct.TYPE_6__*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
