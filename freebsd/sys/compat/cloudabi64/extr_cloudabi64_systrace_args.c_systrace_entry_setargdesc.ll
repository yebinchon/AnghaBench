; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_systrace_args.c_systrace_entry_setargdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi64/extr_cloudabi64_systrace_args.c_systrace_entry_setargdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"cloudabi_clockid_t\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cloudabi_timestamp_t\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"userland cloudabi_condvar_t *\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"cloudabi_scope_t\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"cloudabi_nthreads_t\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"cloudabi_fd_t\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"cloudabi_filetype_t\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"userland const cloudabi64_iovec_t *\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"cloudabi_filesize_t\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"userland const cloudabi64_ciovec_t *\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"cloudabi_filedelta_t\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"cloudabi_whence_t\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"userland cloudabi_fdstat_t *\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"userland const cloudabi_fdstat_t *\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"cloudabi_fdsflags_t\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"cloudabi_advice_t\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"userland const char *\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"cloudabi_lookup_t\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"cloudabi_oflags_t\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"userland void *\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"cloudabi_dircookie_t\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"userland char *\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"userland cloudabi_filestat_t *\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"userland const cloudabi_filestat_t *\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"cloudabi_fsflags_t\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"cloudabi_ulflags_t\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"userland cloudabi_lock_t *\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"cloudabi_mprot_t\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"cloudabi_mflags_t\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"cloudabi_msflags_t\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"userland const cloudabi64_subscription_t *\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"userland cloudabi_event_t *\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"userland const void *\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"userland const cloudabi_fd_t *\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"cloudabi_exitcode_t\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"cloudabi_signal_t\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"userland const cloudabi64_recv_in_t *\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"userland cloudabi64_recv_out_t *\00", align 1
@.str.39 = private unnamed_addr constant [38 x i8] c"userland const cloudabi64_send_in_t *\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"userland cloudabi64_send_out_t *\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"cloudabi_sdflags_t\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"userland cloudabi64_threadattr_t *\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i64)* @systrace_entry_setargdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @systrace_entry_setargdesc(i32 %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %339 [
    i32 0, label %11
    i32 1, label %16
    i32 2, label %22
    i32 3, label %29
    i32 4, label %34
    i32 5, label %39
    i32 6, label %44
    i32 7, label %49
    i32 8, label %54
    i32 9, label %62
    i32 10, label %70
    i32 11, label %77
    i32 12, label %83
    i32 13, label %90
    i32 14, label %96
    i32 15, label %103
    i32 16, label %108
    i32 17, label %115
    i32 18, label %123
    i32 19, label %130
    i32 20, label %138
    i32 21, label %148
    i32 22, label %157
    i32 23, label %165
    i32 24, label %174
    i32 25, label %184
    i32 26, label %190
    i32 27, label %197
    i32 28, label %205
    i32 29, label %214
    i32 30, label %223
    i32 31, label %231
    i32 32, label %237
    i32 33, label %244
    i32 34, label %254
    i32 35, label %261
    i32 36, label %268
    i32 37, label %274
    i32 38, label %281
    i32 39, label %290
    i32 40, label %295
    i32 41, label %296
    i32 42, label %301
    i32 43, label %307
    i32 44, label %314
    i32 45, label %321
    i32 46, label %327
    i32 47, label %332
    i32 48, label %338
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %14 [
    i32 0, label %13
  ]

13:                                               ; preds = %11
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %15

14:                                               ; preds = %11
  br label %15

15:                                               ; preds = %14, %13
  br label %340

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %20 [
    i32 0, label %18
    i32 1, label %19
  ]

18:                                               ; preds = %16
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %21

19:                                               ; preds = %16
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %21

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %19, %18
  br label %340

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %27 [
    i32 0, label %24
    i32 1, label %25
    i32 2, label %26
  ]

24:                                               ; preds = %22
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %28

25:                                               ; preds = %22
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %28

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %28

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %26, %25, %24
  br label %340

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %32 [
    i32 0, label %31
  ]

31:                                               ; preds = %29
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %33

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %31
  br label %340

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %37 [
    i32 0, label %36
  ]

36:                                               ; preds = %34
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %38

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %37, %36
  br label %340

39:                                               ; preds = %4
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %42 [
    i32 0, label %41
  ]

41:                                               ; preds = %39
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %43

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42, %41
  br label %340

44:                                               ; preds = %4
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %47 [
    i32 0, label %46
  ]

46:                                               ; preds = %44
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %48

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %46
  br label %340

49:                                               ; preds = %4
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %52 [
    i32 0, label %51
  ]

51:                                               ; preds = %49
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %53

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %52, %51
  br label %340

54:                                               ; preds = %4
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %60 [
    i32 0, label %56
    i32 1, label %57
    i32 2, label %58
    i32 3, label %59
  ]

56:                                               ; preds = %54
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %61

57:                                               ; preds = %54
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %61

58:                                               ; preds = %54
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %61

59:                                               ; preds = %54
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %61

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %59, %58, %57, %56
  br label %340

62:                                               ; preds = %4
  %63 = load i32, i32* %6, align 4
  switch i32 %63, label %68 [
    i32 0, label %64
    i32 1, label %65
    i32 2, label %66
    i32 3, label %67
  ]

64:                                               ; preds = %62
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %69

65:                                               ; preds = %62
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %69

66:                                               ; preds = %62
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %69

67:                                               ; preds = %62
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %69

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %67, %66, %65, %64
  br label %340

70:                                               ; preds = %4
  %71 = load i32, i32* %6, align 4
  switch i32 %71, label %75 [
    i32 0, label %72
    i32 1, label %73
    i32 2, label %74
  ]

72:                                               ; preds = %70
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %76

73:                                               ; preds = %70
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %76

74:                                               ; preds = %70
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %76

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %74, %73, %72
  br label %340

77:                                               ; preds = %4
  %78 = load i32, i32* %6, align 4
  switch i32 %78, label %81 [
    i32 0, label %79
    i32 1, label %80
  ]

79:                                               ; preds = %77
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %82

80:                                               ; preds = %77
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %82

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %80, %79
  br label %340

83:                                               ; preds = %4
  %84 = load i32, i32* %6, align 4
  switch i32 %84, label %88 [
    i32 0, label %85
    i32 1, label %86
    i32 2, label %87
  ]

85:                                               ; preds = %83
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %89

86:                                               ; preds = %83
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %89

87:                                               ; preds = %83
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8** %9, align 8
  br label %89

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %87, %86, %85
  br label %340

90:                                               ; preds = %4
  %91 = load i32, i32* %6, align 4
  switch i32 %91, label %94 [
    i32 0, label %92
    i32 1, label %93
  ]

92:                                               ; preds = %90
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %95

93:                                               ; preds = %90
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i8** %9, align 8
  br label %95

94:                                               ; preds = %90
  br label %95

95:                                               ; preds = %94, %93, %92
  br label %340

96:                                               ; preds = %4
  %97 = load i32, i32* %6, align 4
  switch i32 %97, label %101 [
    i32 0, label %98
    i32 1, label %99
    i32 2, label %100
  ]

98:                                               ; preds = %96
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %102

99:                                               ; preds = %96
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  br label %102

100:                                              ; preds = %96
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  br label %102

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101, %100, %99, %98
  br label %340

103:                                              ; preds = %4
  %104 = load i32, i32* %6, align 4
  switch i32 %104, label %106 [
    i32 0, label %105
  ]

105:                                              ; preds = %103
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %107

106:                                              ; preds = %103
  br label %107

107:                                              ; preds = %106, %105
  br label %340

108:                                              ; preds = %4
  %109 = load i32, i32* %6, align 4
  switch i32 %109, label %113 [
    i32 0, label %110
    i32 1, label %111
    i32 2, label %112
  ]

110:                                              ; preds = %108
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %114

111:                                              ; preds = %108
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %114

112:                                              ; preds = %108
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %114

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113, %112, %111, %110
  br label %340

115:                                              ; preds = %4
  %116 = load i32, i32* %6, align 4
  switch i32 %116, label %121 [
    i32 0, label %117
    i32 1, label %118
    i32 2, label %119
    i32 3, label %120
  ]

117:                                              ; preds = %115
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %122

118:                                              ; preds = %115
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %122

119:                                              ; preds = %115
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %122

120:                                              ; preds = %115
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  br label %122

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %120, %119, %118, %117
  br label %340

123:                                              ; preds = %4
  %124 = load i32, i32* %6, align 4
  switch i32 %124, label %128 [
    i32 0, label %125
    i32 1, label %126
    i32 2, label %127
  ]

125:                                              ; preds = %123
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %129

126:                                              ; preds = %123
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %129

127:                                              ; preds = %123
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %129

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %127, %126, %125
  br label %340

130:                                              ; preds = %4
  %131 = load i32, i32* %6, align 4
  switch i32 %131, label %136 [
    i32 0, label %132
    i32 1, label %133
    i32 2, label %134
    i32 3, label %135
  ]

132:                                              ; preds = %130
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %137

133:                                              ; preds = %130
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %137

134:                                              ; preds = %130
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %137

135:                                              ; preds = %130
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %137

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136, %135, %134, %133, %132
  br label %340

138:                                              ; preds = %4
  %139 = load i32, i32* %6, align 4
  switch i32 %139, label %146 [
    i32 0, label %140
    i32 1, label %141
    i32 2, label %142
    i32 3, label %143
    i32 4, label %144
    i32 5, label %145
  ]

140:                                              ; preds = %138
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  br label %147

141:                                              ; preds = %138
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %147

142:                                              ; preds = %138
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %147

143:                                              ; preds = %138
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %147

144:                                              ; preds = %138
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %147

145:                                              ; preds = %138
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %147

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %145, %144, %143, %142, %141, %140
  br label %340

148:                                              ; preds = %4
  %149 = load i32, i32* %6, align 4
  switch i32 %149, label %155 [
    i32 0, label %150
    i32 1, label %151
    i32 2, label %152
    i32 3, label %153
    i32 4, label %154
  ]

150:                                              ; preds = %148
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  br label %156

151:                                              ; preds = %148
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %156

152:                                              ; preds = %148
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %156

153:                                              ; preds = %148
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8** %9, align 8
  br label %156

154:                                              ; preds = %148
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  br label %156

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %154, %153, %152, %151, %150
  br label %340

157:                                              ; preds = %4
  %158 = load i32, i32* %6, align 4
  switch i32 %158, label %163 [
    i32 0, label %159
    i32 1, label %160
    i32 2, label %161
    i32 3, label %162
  ]

159:                                              ; preds = %157
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %164

160:                                              ; preds = %157
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %9, align 8
  br label %164

161:                                              ; preds = %157
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %164

162:                                              ; preds = %157
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i8** %9, align 8
  br label %164

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163, %162, %161, %160, %159
  br label %340

165:                                              ; preds = %4
  %166 = load i32, i32* %6, align 4
  switch i32 %166, label %172 [
    i32 0, label %167
    i32 1, label %168
    i32 2, label %169
    i32 3, label %170
    i32 4, label %171
  ]

167:                                              ; preds = %165
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %173

168:                                              ; preds = %165
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %173

169:                                              ; preds = %165
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %173

170:                                              ; preds = %165
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i8** %9, align 8
  br label %173

171:                                              ; preds = %165
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %173

172:                                              ; preds = %165
  br label %173

173:                                              ; preds = %172, %171, %170, %169, %168, %167
  br label %340

174:                                              ; preds = %4
  %175 = load i32, i32* %6, align 4
  switch i32 %175, label %182 [
    i32 0, label %176
    i32 1, label %177
    i32 2, label %178
    i32 3, label %179
    i32 4, label %180
    i32 5, label %181
  ]

176:                                              ; preds = %174
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %183

177:                                              ; preds = %174
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %183

178:                                              ; preds = %174
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %183

179:                                              ; preds = %174
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %183

180:                                              ; preds = %174
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %183

181:                                              ; preds = %174
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %183

182:                                              ; preds = %174
  br label %183

183:                                              ; preds = %182, %181, %180, %179, %178, %177, %176
  br label %340

184:                                              ; preds = %4
  %185 = load i32, i32* %6, align 4
  switch i32 %185, label %188 [
    i32 0, label %186
    i32 1, label %187
  ]

186:                                              ; preds = %184
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %189

187:                                              ; preds = %184
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0), i8** %9, align 8
  br label %189

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188, %187, %186
  br label %340

190:                                              ; preds = %4
  %191 = load i32, i32* %6, align 4
  switch i32 %191, label %195 [
    i32 0, label %192
    i32 1, label %193
    i32 2, label %194
  ]

192:                                              ; preds = %190
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %196

193:                                              ; preds = %190
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i8** %9, align 8
  br label %196

194:                                              ; preds = %190
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i8** %9, align 8
  br label %196

195:                                              ; preds = %190
  br label %196

196:                                              ; preds = %195, %194, %193, %192
  br label %340

197:                                              ; preds = %4
  %198 = load i32, i32* %6, align 4
  switch i32 %198, label %203 [
    i32 0, label %199
    i32 1, label %200
    i32 2, label %201
    i32 3, label %202
  ]

199:                                              ; preds = %197
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  br label %204

200:                                              ; preds = %197
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %204

201:                                              ; preds = %197
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %204

202:                                              ; preds = %197
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0), i8** %9, align 8
  br label %204

203:                                              ; preds = %197
  br label %204

204:                                              ; preds = %203, %202, %201, %200, %199
  br label %340

205:                                              ; preds = %4
  %206 = load i32, i32* %6, align 4
  switch i32 %206, label %212 [
    i32 0, label %207
    i32 1, label %208
    i32 2, label %209
    i32 3, label %210
    i32 4, label %211
  ]

207:                                              ; preds = %205
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  br label %213

208:                                              ; preds = %205
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %213

209:                                              ; preds = %205
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %213

210:                                              ; preds = %205
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i8** %9, align 8
  br label %213

211:                                              ; preds = %205
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i8** %9, align 8
  br label %213

212:                                              ; preds = %205
  br label %213

213:                                              ; preds = %212, %211, %210, %209, %208, %207
  br label %340

214:                                              ; preds = %4
  %215 = load i32, i32* %6, align 4
  switch i32 %215, label %221 [
    i32 0, label %216
    i32 1, label %217
    i32 2, label %218
    i32 3, label %219
    i32 4, label %220
  ]

216:                                              ; preds = %214
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %222

217:                                              ; preds = %214
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %222

218:                                              ; preds = %214
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %222

219:                                              ; preds = %214
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %222

220:                                              ; preds = %214
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %222

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221, %220, %219, %218, %217, %216
  br label %340

223:                                              ; preds = %4
  %224 = load i32, i32* %6, align 4
  switch i32 %224, label %229 [
    i32 0, label %225
    i32 1, label %226
    i32 2, label %227
    i32 3, label %228
  ]

225:                                              ; preds = %223
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %230

226:                                              ; preds = %223
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %230

227:                                              ; preds = %223
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %230

228:                                              ; preds = %223
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i8** %9, align 8
  br label %230

229:                                              ; preds = %223
  br label %230

230:                                              ; preds = %229, %228, %227, %226, %225
  br label %340

231:                                              ; preds = %4
  %232 = load i32, i32* %6, align 4
  switch i32 %232, label %235 [
    i32 0, label %233
    i32 1, label %234
  ]

233:                                              ; preds = %231
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i8** %9, align 8
  br label %236

234:                                              ; preds = %231
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %236

235:                                              ; preds = %231
  br label %236

236:                                              ; preds = %235, %234, %233
  br label %340

237:                                              ; preds = %4
  %238 = load i32, i32* %6, align 4
  switch i32 %238, label %242 [
    i32 0, label %239
    i32 1, label %240
    i32 2, label %241
  ]

239:                                              ; preds = %237
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %9, align 8
  br label %243

240:                                              ; preds = %237
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %243

241:                                              ; preds = %237
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8** %9, align 8
  br label %243

242:                                              ; preds = %237
  br label %243

243:                                              ; preds = %242, %241, %240, %239
  br label %340

244:                                              ; preds = %4
  %245 = load i32, i32* %6, align 4
  switch i32 %245, label %252 [
    i32 0, label %246
    i32 1, label %247
    i32 2, label %248
    i32 3, label %249
    i32 4, label %250
    i32 5, label %251
  ]

246:                                              ; preds = %244
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %9, align 8
  br label %253

247:                                              ; preds = %244
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %253

248:                                              ; preds = %244
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8** %9, align 8
  br label %253

249:                                              ; preds = %244
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i8** %9, align 8
  br label %253

250:                                              ; preds = %244
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %253

251:                                              ; preds = %244
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %253

252:                                              ; preds = %244
  br label %253

253:                                              ; preds = %252, %251, %250, %249, %248, %247, %246
  br label %340

254:                                              ; preds = %4
  %255 = load i32, i32* %6, align 4
  switch i32 %255, label %259 [
    i32 0, label %256
    i32 1, label %257
    i32 2, label %258
  ]

256:                                              ; preds = %254
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %9, align 8
  br label %260

257:                                              ; preds = %254
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %260

258:                                              ; preds = %254
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8** %9, align 8
  br label %260

259:                                              ; preds = %254
  br label %260

260:                                              ; preds = %259, %258, %257, %256
  br label %340

261:                                              ; preds = %4
  %262 = load i32, i32* %6, align 4
  switch i32 %262, label %266 [
    i32 0, label %263
    i32 1, label %264
    i32 2, label %265
  ]

263:                                              ; preds = %261
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %9, align 8
  br label %267

264:                                              ; preds = %261
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %267

265:                                              ; preds = %261
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i8** %9, align 8
  br label %267

266:                                              ; preds = %261
  br label %267

267:                                              ; preds = %266, %265, %264, %263
  br label %340

268:                                              ; preds = %4
  %269 = load i32, i32* %6, align 4
  switch i32 %269, label %272 [
    i32 0, label %270
    i32 1, label %271
  ]

270:                                              ; preds = %268
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %9, align 8
  br label %273

271:                                              ; preds = %268
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %273

272:                                              ; preds = %268
  br label %273

273:                                              ; preds = %272, %271, %270
  br label %340

274:                                              ; preds = %4
  %275 = load i32, i32* %6, align 4
  switch i32 %275, label %279 [
    i32 0, label %276
    i32 1, label %277
    i32 2, label %278
  ]

276:                                              ; preds = %274
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.31, i64 0, i64 0), i8** %9, align 8
  br label %280

277:                                              ; preds = %274
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.32, i64 0, i64 0), i8** %9, align 8
  br label %280

278:                                              ; preds = %274
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %280

279:                                              ; preds = %274
  br label %280

280:                                              ; preds = %279, %278, %277, %276
  br label %340

281:                                              ; preds = %4
  %282 = load i32, i32* %6, align 4
  switch i32 %282, label %288 [
    i32 0, label %283
    i32 1, label %284
    i32 2, label %285
    i32 3, label %286
    i32 4, label %287
  ]

283:                                              ; preds = %281
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %289

284:                                              ; preds = %281
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0), i8** %9, align 8
  br label %289

285:                                              ; preds = %281
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %289

286:                                              ; preds = %281
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.34, i64 0, i64 0), i8** %9, align 8
  br label %289

287:                                              ; preds = %281
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %289

288:                                              ; preds = %281
  br label %289

289:                                              ; preds = %288, %287, %286, %285, %284, %283
  br label %340

290:                                              ; preds = %4
  %291 = load i32, i32* %6, align 4
  switch i32 %291, label %293 [
    i32 0, label %292
  ]

292:                                              ; preds = %290
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i8** %9, align 8
  br label %294

293:                                              ; preds = %290
  br label %294

294:                                              ; preds = %293, %292
  br label %340

295:                                              ; preds = %4
  br label %340

296:                                              ; preds = %4
  %297 = load i32, i32* %6, align 4
  switch i32 %297, label %299 [
    i32 0, label %298
  ]

298:                                              ; preds = %296
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i64 0, i64 0), i8** %9, align 8
  br label %300

299:                                              ; preds = %296
  br label %300

300:                                              ; preds = %299, %298
  br label %340

301:                                              ; preds = %4
  %302 = load i32, i32* %6, align 4
  switch i32 %302, label %305 [
    i32 0, label %303
    i32 1, label %304
  ]

303:                                              ; preds = %301
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i8** %9, align 8
  br label %306

304:                                              ; preds = %301
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %306

305:                                              ; preds = %301
  br label %306

306:                                              ; preds = %305, %304, %303
  br label %340

307:                                              ; preds = %4
  %308 = load i32, i32* %6, align 4
  switch i32 %308, label %312 [
    i32 0, label %309
    i32 1, label %310
    i32 2, label %311
  ]

309:                                              ; preds = %307
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %313

310:                                              ; preds = %307
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i64 0, i64 0), i8** %9, align 8
  br label %313

311:                                              ; preds = %307
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0), i8** %9, align 8
  br label %313

312:                                              ; preds = %307
  br label %313

313:                                              ; preds = %312, %311, %310, %309
  br label %340

314:                                              ; preds = %4
  %315 = load i32, i32* %6, align 4
  switch i32 %315, label %319 [
    i32 0, label %316
    i32 1, label %317
    i32 2, label %318
  ]

316:                                              ; preds = %314
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %320

317:                                              ; preds = %314
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.39, i64 0, i64 0), i8** %9, align 8
  br label %320

318:                                              ; preds = %314
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.40, i64 0, i64 0), i8** %9, align 8
  br label %320

319:                                              ; preds = %314
  br label %320

320:                                              ; preds = %319, %318, %317, %316
  br label %340

321:                                              ; preds = %4
  %322 = load i32, i32* %6, align 4
  switch i32 %322, label %325 [
    i32 0, label %323
    i32 1, label %324
  ]

323:                                              ; preds = %321
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %326

324:                                              ; preds = %321
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), i8** %9, align 8
  br label %326

325:                                              ; preds = %321
  br label %326

326:                                              ; preds = %325, %324, %323
  br label %340

327:                                              ; preds = %4
  %328 = load i32, i32* %6, align 4
  switch i32 %328, label %330 [
    i32 0, label %329
  ]

329:                                              ; preds = %327
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i64 0, i64 0), i8** %9, align 8
  br label %331

330:                                              ; preds = %327
  br label %331

331:                                              ; preds = %330, %329
  br label %340

332:                                              ; preds = %4
  %333 = load i32, i32* %6, align 4
  switch i32 %333, label %336 [
    i32 0, label %334
    i32 1, label %335
  ]

334:                                              ; preds = %332
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), i8** %9, align 8
  br label %337

335:                                              ; preds = %332
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %337

336:                                              ; preds = %332
  br label %337

337:                                              ; preds = %336, %335, %334
  br label %340

338:                                              ; preds = %4
  br label %340

339:                                              ; preds = %4
  br label %340

340:                                              ; preds = %339, %338, %337, %331, %326, %320, %313, %306, %300, %295, %294, %289, %280, %273, %267, %260, %253, %243, %236, %230, %222, %213, %204, %196, %189, %183, %173, %164, %156, %147, %137, %129, %122, %114, %107, %102, %95, %89, %82, %76, %69, %61, %53, %48, %43, %38, %33, %28, %21, %15
  %341 = load i8*, i8** %9, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %348

343:                                              ; preds = %340
  %344 = load i8*, i8** %7, align 8
  %345 = load i8*, i8** %9, align 8
  %346 = load i64, i64* %8, align 8
  %347 = call i32 @strlcpy(i8* %344, i8* %345, i64 %346)
  br label %348

348:                                              ; preds = %343, %340
  ret void
}

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
